rerun: features documentation
features:
	Rscript feature_extraction/extract_demographics.R || exit 1
	Rscript feature_extraction/extract_mhealthtools_tremor_features.R || exit 1
	Rscript feature_extraction/extract_mhealthtools_tapping_features.R || exit 1
	Rscript feature_extraction/extract_pdkit_rotation_walk30secs_features.R || exit 1
	Rscript feature_extraction/extract_pdkit_rotation_passive_features.R || exit 1
documentation: 
	Rscript wiki/knit_md.R
	