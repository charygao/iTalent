package be.italent.web.controller;

import be.italent.model.Project;
import be.italent.model.SubscriberDocent;
import be.italent.service.ProjectService;
import be.italent.service.UserService;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
@RequestMapping("/subscriberDocent")
public class SubscriberDocentRestController {
    private static final Logger logger = LogManager.getLogger(SubscriberDocentRestController.class.getName());

    @Autowired
    private UserService userService;

    @Autowired
    private ProjectService projectService;

    /**
     * Add the percentage of a backing for a {@link be.italent.model.Project} for an authenticated Docent
     *
     * @param id         {@link int} The id of the {@link Project} to be backed
     * @param percentage {@link int} The percentage of backing the project receives
     * @param principal  {@link Principal}
     */
    @Secured("Docent")
    @RequestMapping(value = "/save/{id}/{percentage}", method = RequestMethod.POST, produces = "application/json")
    public void save(@PathVariable("id") final int id, @PathVariable("percentage") final int percentage, Principal principal) {
        SubscriberDocent subscriberDocent = new SubscriberDocent();
        subscriberDocent.setUser(userService.getUserByUsername(principal.getName()));
        subscriberDocent.setBackingPct(percentage);
        Project project = projectService.getProjectById(id);
        subscriberDocent.setProject(project);
        project.getSubscribersDocent().add(subscriberDocent);
        project.updateBackingPct();
        projectService.saveProject(project, principal.getName());
    }
}