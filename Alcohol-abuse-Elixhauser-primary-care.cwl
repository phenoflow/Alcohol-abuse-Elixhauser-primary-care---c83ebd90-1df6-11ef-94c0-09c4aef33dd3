cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  alcohol-abuse-elixhauser-primary-care-remission---primary:
    run: alcohol-abuse-elixhauser-primary-care-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  alcohol-abuse-elixhauser-primary-care-tremens---primary:
    run: alcohol-abuse-elixhauser-primary-care-tremens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-remission---primary/output
  alcohol-abuse-elixhauser-primary-care-induced---primary:
    run: alcohol-abuse-elixhauser-primary-care-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-tremens---primary/output
  alcohol-abuse-elixhauser-primary-care-counselling---primary:
    run: alcohol-abuse-elixhauser-primary-care-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-induced---primary/output
  episodic-alcohol-abuse-elixhauser-primary-care---primary:
    run: episodic-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-counselling---primary/output
  alcohol-abuse-elixhauser-primary-care-korsakov---primary:
    run: alcohol-abuse-elixhauser-primary-care-korsakov---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: episodic-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-unspecified---primary:
    run: alcohol-abuse-elixhauser-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-korsakov---primary/output
  alcohol-abuse-elixhauser-primary-care-dependence---primary:
    run: alcohol-abuse-elixhauser-primary-care-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-unspecified---primary/output
  alcohol-abuse-elixhauser-primary-care-hallucinosis---primary:
    run: alcohol-abuse-elixhauser-primary-care-hallucinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-dependence---primary/output
  acute-alcohol-abuse-elixhauser-primary-care---primary:
    run: acute-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-hallucinosis---primary/output
  deterrent-alcohol-abuse-elixhauser-primary-care---primary:
    run: deterrent-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: acute-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-community---primary:
    run: alcohol-abuse-elixhauser-primary-care-community---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: deterrent-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care---primary:
    run: alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-community---primary/output
  harmful-alcohol-abuse-elixhauser-primary-care---primary:
    run: harmful-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care---primary/output
  amnestic-alcohol-abuse-elixhauser-primary-care---primary:
    run: amnestic-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: harmful-alcohol-abuse-elixhauser-primary-care---primary/output
  adverse-alcohol-abuse-elixhauser-primary-care---primary:
    run: adverse-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: amnestic-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-damage---primary:
    run: alcohol-abuse-elixhauser-primary-care-damage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: adverse-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-extended---primary:
    run: alcohol-abuse-elixhauser-primary-care-extended---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-damage---primary/output
  alcohol-abuse-elixhauser-primary-care-paranoia---primary:
    run: alcohol-abuse-elixhauser-primary-care-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-extended---primary/output
  continuous-alcohol-abuse-elixhauser-primary-care---primary:
    run: continuous-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-paranoia---primary/output
  alcohol-abuse-elixhauser-primary-care-treatment---primary:
    run: alcohol-abuse-elixhauser-primary-care-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: continuous-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-hepatitis---primary:
    run: alcohol-abuse-elixhauser-primary-care-hepatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-treatment---primary/output
  chronic-alcohol-abuse-elixhauser-primary-care---primary:
    run: chronic-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-hepatitis---primary/output
  alcohol-abuse-elixhauser-primary-care-consumptn---primary:
    run: alcohol-abuse-elixhauser-primary-care-consumptn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: chronic-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-dipsomania---primary:
    run: alcohol-abuse-elixhauser-primary-care-dipsomania---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-consumptn---primary/output
  mental-alcohol-abuse-elixhauser-primary-care---primary:
    run: mental-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-dipsomania---primary/output
  alcohol-abuse-elixhauser-primary-care-drinker---primary:
    run: alcohol-abuse-elixhauser-primary-care-drinker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: mental-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-detoxification---primary:
    run: alcohol-abuse-elixhauser-primary-care-detoxification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-drinker---primary/output
  alcohol-abuse-elixhauser-primary-care-withdrawal---primary:
    run: alcohol-abuse-elixhauser-primary-care-withdrawal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-detoxification---primary/output
  alcohol-abuse-elixhauser-primary-care-liver---primary:
    run: alcohol-abuse-elixhauser-primary-care-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-withdrawal---primary/output
  alcohol-abuse-elixhauser-primary-care-intoxication---primary:
    run: alcohol-abuse-elixhauser-primary-care-intoxication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-liver---primary/output
  alcohol-abuse-elixhauser-primary-care-brain---primary:
    run: alcohol-abuse-elixhauser-primary-care-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-intoxication---primary/output
  alcohol-abuse-elixhauser-primary-care-dementium---primary:
    run: alcohol-abuse-elixhauser-primary-care-dementium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-brain---primary/output
  alcohol-abuse-elixhauser-primary-care-monitoring---primary:
    run: alcohol-abuse-elixhauser-primary-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-dementium---primary/output
  alcohol-abuse-elixhauser-primary-care-rehabilitation---primary:
    run: alcohol-abuse-elixhauser-primary-care-rehabilitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-monitoring---primary/output
  alcohol-abuse-elixhauser-primary-care-delirium---primary:
    run: alcohol-abuse-elixhauser-primary-care-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-rehabilitation---primary/output
  nondependent-alcohol-abuse-elixhauser-primary-care---primary:
    run: nondependent-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-delirium---primary/output
  alcohol-abuse-elixhauser-primary-care-alcoholism---primary:
    run: alcohol-abuse-elixhauser-primary-care-alcoholism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: nondependent-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-addiction---primary:
    run: alcohol-abuse-elixhauser-primary-care-addiction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-alcoholism---primary/output
  brief-alcohol-abuse-elixhauser-primary-care---primary:
    run: brief-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-addiction---primary/output
  other-alcohol-abuse-elixhauser-primary-care---primary:
    run: other-alcohol-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: brief-alcohol-abuse-elixhauser-primary-care---primary/output
  alcohol-abuse-elixhauser-primary-care-state---primary:
    run: alcohol-abuse-elixhauser-primary-care-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: other-alcohol-abuse-elixhauser-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: alcohol-abuse-elixhauser-primary-care-state---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
