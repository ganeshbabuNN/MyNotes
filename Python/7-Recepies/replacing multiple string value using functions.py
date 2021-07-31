import re
source = ".well-known s"

replacements = {
    '.well-known': '', # replace 'is' with 'was' 
    'uat':'',
    '[trial]':'',
    'pdf':''
}

def replace(source):
    finder = re.compile("|".join(re.escape(k) for k in replacements.keys())) # matches every string we want replaced
    result = []
    pos = 0
    while True:
        match = finder.search(source, pos)
        if match:
            # cut off the part up until match
            result.append(source[pos : match.start()])
            # cut off the matched part and replace it in place
            result.append(replacements[source[match.start() : match.end()]])
            pos = match.end()
        else:
            # the rest after the last match
            result.append(source[pos:])
            break
    return "".join(result)
	
#call the function
df4['Trial_no']=df4['Trial_no'].apply(replace)