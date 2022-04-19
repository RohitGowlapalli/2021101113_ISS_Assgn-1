
#!/bin/bash
awk '{s+=1} {print "Line No:"s "-" "Count of Words:" NF}' $1


