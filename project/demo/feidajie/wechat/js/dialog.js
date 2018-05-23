(function() {

				var dlgtrigger = document.querySelector( '[data-dialog]' ),

					somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
					// svg..
					morphEl = somedialog.querySelector( '.morph-shape' ),
					s = Snap( morphEl.querySelector( 'svg' ) ),
					path = s.select( 'path' ),
					steps = { 
						open : morphEl.getAttribute( 'data-morph-open' ),
						close : morphEl.getAttribute( 'data-morph-close' )
					},
					dlg = new DialogFx( somedialog, {
						onOpenDialog : function( instance ) {
							// animate path
							path.stop().animate( { 'path' : steps.open }, 400, mina.easeinout );
						},
						onCloseDialog : function( instance ) {
							// animate path
							path.stop().animate( { 'path' : steps.close }, 400, mina.easeinout );
						}
					} );

				dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );

			})();