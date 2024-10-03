
$number = @('1','2','3','4','5','6','7','8','9')
$letter = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',`
'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z')
$special = @('.','!','*','$','-','&',';',',','_')
$pwd = $null

function randomPwd {
    param (
        $lenghtNumber = 4,
        $lenghtLetter = 6,
        $lenghtSpecial = 2
        )
    
    # Compose string with lenght parameters
    for ($i = 0; $i -lt $lenghtLetter ; $i++) {
        $pwd += Get-Random $letter
    }   

    for ($i = 0; $i -lt $lenghtSpecial ; $i++) {
        $pwd += Get-Random $special
    }

    for ($i = 0; $i -lt $lenghtNumber ; $i++) {
        $pwd += Get-Random $number
    }
    # Randomise the current string
    $pwdArray = $pwd.ToCharArray()
    $pwdScrambled = $pwdArray | Get-Random -Count $pwdArray.Length
    $pwdFinal = -join $pwdScrambled

    return $pwdFinal
}

randomPwd
randomPwd -lenghtLetter 12 -lenghtNumber 8 -lenghtSpecial 5
