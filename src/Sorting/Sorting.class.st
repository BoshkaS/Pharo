Class {
	#name : 'Sorting',
	#superclass : 'Object',
	#category : 'Sorting',
	#package : 'Sorting'
}

{ #category : 'as yet unclassified' }
Sorting class >> sortArray: a [
    "Sort the array `a` using insertion sort algorithm."
    
    | indexToInsert b comparisonPlace |
    
    "Initially, we assume the first element is already sorted, so we start from index 2"
    2 to: a size do: [ :indexToInsert | 
        b := a at: indexToInsert. 
        comparisonPlace := indexToInsert - 1.
        
        "Move elements in the sorted portion of the array to make space for `b`"
        [ comparisonPlace > 0 and: [ (a at: comparisonPlace) > b ] ] whileTrue: [
            a at: (comparisonPlace + 1) put: (a at: comparisonPlace).
            comparisonPlace := comparisonPlace - 1.
        ].
        
        "Insert the element `b` into its correct position"
        a at: (comparisonPlace + 1) put: b.
    ].
]
