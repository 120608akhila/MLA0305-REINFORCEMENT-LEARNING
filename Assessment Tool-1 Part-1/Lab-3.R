library(DiagrammeR)

grViz("

digraph MDP {

graph [
layout = dot
rankdir = TB
splines = ortho
nodesep = 0.5
ranksep = 0.8
bgcolor = white
]

node [
shape = rectangle
style = 'rounded,filled'
fontname = Helvetica
fontsize = 15
fontcolor = black
color = black
penwidth = 2
margin = 0.18
]

Start [
label = 'Markov Decision Process (MDP)'
fillcolor = '#1F77B4'
fontcolor = white
fontsize = 20
]

Problem [
label = 'Problem Definition'
fillcolor = '#AED6F1'
]

Components [
label = 'MDP Components'
fillcolor = '#A9DFBF'
]

Learning [
label = 'Decision Process'
fillcolor = '#F9E79F'
]

Output [
label = 'Optimal Solution'
fillcolor = '#F5B7B1'
]

Objective [
label = 'Define Objective'
fillcolor = '#D6EAF8'
]

Environment [
label = 'Specify Environment'
fillcolor = '#D6EAF8'
]

States [
label = 'State Space (S)'
fillcolor = '#ABEBC6'
]

Actions [
label = 'Action Space (A)'
fillcolor = '#ABEBC6'
]

Transition [
label = 'Transition Probability\\nP(next_state | state, action)'
fillcolor = '#ABEBC6'
]

Reward [
label = 'Reward Function\\nR(state, action)'
fillcolor = '#ABEBC6'
]

Discount [
label = 'Discount Factor (Gamma)'
fillcolor = '#ABEBC6'
]

Observe [
label = 'Observe Current State'
fillcolor = '#FCF3CF'
]

Choose [
label = 'Choose Action'
fillcolor = '#FCF3CF'
]

Execute [
label = 'Execute Action'
fillcolor = '#FCF3CF'
]

Receive [
label = 'Receive Reward'
fillcolor = '#FCF3CF'
]

NextState [
label = 'Move to Next State'
fillcolor = '#FCF3CF'
]

Update [
label = 'Update Value / Policy'
fillcolor = '#FAD7A0'
]

Converge [
label = 'Convergence?'
shape = diamond
fillcolor = '#F8C471'
]

Repeat [
label = 'Repeat Iteration'
fillcolor = '#FDEBD0'
]

Policy [
label = 'Optimal Policy'
fillcolor = '#F1948A'
]

Value [
label = 'Optimal Value Function'
fillcolor = '#F1948A'
]

Decision [
label = 'Best Sequential Decision'
fillcolor = '#EC7063'
fontcolor = white
]

Start -> Problem
Start -> Components
Start -> Learning
Start -> Output

Problem -> Objective
Problem -> Environment

Components -> States
Components -> Actions
Components -> Transition
Components -> Reward
Components -> Discount

Learning -> Observe
Observe -> Choose
Choose -> Execute
Execute -> Receive
Receive -> NextState
NextState -> Update
Update -> Converge

Converge -> Repeat [label='No']
Repeat -> Observe

Converge -> Policy [label='Yes']

Output -> Policy
Output -> Value
Policy -> Decision
Value -> Decision

}
")