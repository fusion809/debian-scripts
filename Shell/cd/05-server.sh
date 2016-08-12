# MediaWiki
function cdmw {
	cd $MW/$1
}

function cdmwe {
	cdmw extensions/$1
}

function cdmwi {
	cdmw images/$1
}

function cdmwm {
	cdmw maintenance/$1
}

#----- End of MediaWiki -----#

# WordPress

function cdwp {
	cd $WP/$1
}

function cdwpp {
	cd $WP_CON/plugins/$1
}

function cdwpt {
	cd $WP_CON/themes/$1
}

function cdwpu {
	cd $WP_CON/uploads/$1
}

#- End of WordPress -#
