set fp [open "uart.lst" r]
while {[gets $fp line] >= 0} {
    # Clean up whitespace
    set file_path [string trim $line]
    
    # Skip empty lines, comments, and compiler directives (+ or -)
    if {$file_path eq "" || [string match "//*" $file_path] || [string match "#*" $file_path] || [string match "+*" $file_path] || [string match "-*" $file_path]} {
        continue
    }
    
    # Add the file to the active QuestaSim project
    project addfile $file_path
}
close $fp