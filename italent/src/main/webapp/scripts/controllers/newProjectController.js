/**
 * Created by arjen on 05/04/16.
 */
angular.module('iTalentApp')
    .controller('newProjectController', ['$scope', '$location', '$routeParams', 'projectService', function ($scope, $location, $routeParams, projectService) {

        var projectId = $routeParams.id;
        $scope.project = {'user': null, 'movies' : [], 'pictures' : []};
        $scope.maxLengthOfMovies = 5;
        $scope.maxLengthOfPictures = 10;
        $scope.picturesConverted = true;
        
        if (projectId) {
            projectService.get(projectId).then(function (project) {
                $scope.project = project;
            }, function (err) {
                console.log('Error getting project: ' + err)
            });
        }
        
        $scope.save = function() {
        	$scope.storeMovies();
        	$scope.storePictures();
        	
            projectService.saveOrUpdate($scope.project).then(function() {
                $location.path('/myProjects');
            }, function(err) {
                console.log('Error saving project.')
            })
        };
        
        $scope.deleteProject = function() {   
            projectService.deleteProject(projectId).then(function() {
                $location.path('/myProjects');
            }, function(err) {
                console.log('Error deleting project.')
            })
        };

        $scope.storeMovies = function(){
        	for (var i = 0; i < $scope.maxLengthOfMovies; i++) {
				var element = document.getElementById("project_movie_" + i);
				var element_descr = document.getElementById("project_movie_descr_" + i);
				if(element_descr == null){
					break;
				}

				$scope.project.movies[i].youTubeId = element.value;
				$scope.project.movies[i].description = element_descr.value;
			}
        };
        $scope.storePictures = function(){
        	for (var i = 0; i < $scope.maxLengthOfPictures; i++) {
				var element_descr = document.getElementById("project_picture_descr_" + i);
				if(element_descr == null){
					break;
				}
				
				$scope.project.pictures[i].description = element_descr.value;
			}
        };
        $scope.convertImage = function(element, i) {
            $scope.$apply(function(scope) {
            	
            	$scope.picturesConverted = false;
            	
            	var reader  = new FileReader();
    	        (function (i) {
                	reader.addEventListener("load", function () {
                		var index = parseInt(element.getAttribute("index"));
                		$scope.project.pictures[index].bytes = reader.result.split(",")[1];
                		$scope.picturesConverted = true;		
    				}, false);
    		         })(i);
    			
    			reader.readAsDataURL(element.files[0]);
            });
       };
        
        $scope.cancel = function() {
            $location.path('/myProjects');
        };
        
        $scope.addMovie = function(){
        	if($scope.project.movies.length == this.maxLengthOfMovies){
        		return;
        	}
            $scope.project.movies.push({'youTubeId':'', 'description':''});
        };
        
        $scope.addPicture = function(){
        	if($scope.project.pictures.length == this.maxLengthOfPictures){
        		return;
        	}
            $scope.project.pictures.push({});
        };
    }]);
