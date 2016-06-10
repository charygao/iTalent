angular.module('iTalentApp')
    .controller('detailController', ['$scope', '$routeParams', '$location', 'projectService', 'likeService', 'subscriberStudentService', 'subscriberDocentService', 'commentService', 'toastr', '$translate', 
        function ($scope, $routeParams, $location, projectService, likeService, subscriberStudentService, subscriberDocentService, commentService, toastr, $translate) {

        var projectId = $routeParams.id;
        $scope.project = {};
        $scope.comments = [];
        $scope.carouselInterval = 3000;
        $scope.active = 0;
        $scope.noWrapSlides = false;
        
        projectService.get(projectId).then(function (project) {
            $scope.project = project;
            if($scope.project.prezis.length>0){
            	$scope.setupPreziPlayer();
            }
            
        }, function (err) {
            console.log('Error getting project:');
            console.log(err);
        });
        
        $scope.likeClicked = function (project) {
            if (!project.numberOfLikes) {
                project.numberOfLikes = 0;
            }
            if (project.liked) {
                project.numberOfLikes--;
            } else {
                project.numberOfLikes++;
            }
            project.liked = !project.liked;
            likeService.saveOrUpdate(project.projectId).then(function () {
                $scope.message = "Likes updated";
            }, function (err) {
                console.log('Error updating likes: ');
                console.log(err);
            })
        };

        $scope.saveSubscriberStudent = function(id, hours) {
            subscriberStudentService.save(id, hours).then(function() {
            	toastr.success($translate.instant('views.messages.success_subscribe'), $translate.instant('views.messages.success'));
                console.log('Success saving subscriberStudent');
                $scope.project.canSubscribe = false;
            }, function(err) {
            	toastr.error($translate.instant('views.messages.success_subscribe'), $translate.instant('views.messages.fail'));
                console.log('Error saving subscriberStudent.');
                console.log(err);
            })
        };
        
        $scope.getComments = function(){
            commentService.list(projectId).then(function (comments) {
            	$scope.comments = comments;
            }, function (err) {
                console.log('Error getting comments:');
                console.log(err);
            });
        };
        
        $scope.saveSubscriberDocent = function(id, percentage) {
            subscriberDocentService.save(id, percentage).then(function() {
            	toastr.success($translate.instant('views.messages.success_support'), $translate.instant('views.messages.success'));
                console.log('Success saving subscriberDocent');
                $scope.project.canBack = false;
            }, function(err) {
            	toastr.error($translate.instant('views.messages.error_support'), $translate.instant('views.messages.fail'));
                console.log('Error saving subscriberDocent.');
                console.log(err);
            })
        };

        $scope.addComment = function(comment){
        	commentService.save($scope.project.projectId, comment).then(function() {
                 console.log('Success saving comment');
                 $scope.getComments();
                 $scope.comment = "";
             }, function(err) {
                 console.log('Error saving comment');
                 console.log(err);
             })
        };

        $scope.setupPreziPlayer = function() {
        	var player = new PreziPlayer('prezi-player', {
                preziId: $scope.project.prezis[0].preziCode, //TODO multiple codes?
                width: 540,
                height: 400,
                controls: true
            });
        };
        

        if ($scope.authenticated){
        	$scope.getComments();
        }
        $scope.editProject = function(id) {
            $location.path('/editProject/' + id);
        };
        
        $scope.removeComment = function(comment){
        	commentService.remove(comment.commentId).then(function () {
                $scope.getComments();
            }, function (err) {
                console.log('Error deleting comment');
                console.log(err);
            })
        
        };
    }]);
