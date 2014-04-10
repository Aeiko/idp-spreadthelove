$(function() {
	var len = $(".dotted-line").width(); //this is to get the width of the dotted line! just in case it changes.
	$(".draggable").each(function() { 
		//for each draggable class, make it draggable horizontally within its parent!
		$(this).draggable({
			axis : "x",
			containment : $(this).parent()
		});
		$(this).on("drag", function(event, ui) {
			//on drag, get the position of the smiley face and change the width of the 
			//line based on how far you dragged
			var pos =  len + ui.position.left;
			$(this).siblings(".dotted-line").width(pos);
			if (pos <= 25) {
				//make it not draggable when the faces are close!
				$(this).draggable({
					disabled : true
				});
				$(this).parent().parent().children(".left-marker").attr('src', "img/splleft2.png");
				$(this).attr('src', "img/splright2.png");
				$(this).attr('style', "cursor: default");
				//the two faces are now quite close to each other;
				//add your codes here!
				
				$.post('/generateifeelyou.action', $("#feelForm_" + this.id).serialize(), function (data) {
			    });
				
				console.log(this.id);
				
				$(this).off();
				//stop pesky error messages
			}
		});
	});
});
