"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestSorting',
	#superclass : 'PackageManifest',
	#category : 'Sorting-Manifest',
	#package : 'Sorting',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestSorting class >> ruleClassNameInSelectorRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'MaxSort class' #FindMaxSort: #true)) #'2024-10-31T13:30:13.006+02:00') )
]
