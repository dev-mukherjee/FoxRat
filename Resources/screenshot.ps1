$path = "C:\...\Screenshots\Images\" #***change the path
$filename = "Test"
 $i = 0
 for ($i=0; $i -le 6){ #***change number of repetitions (6=1Min for 10sec sleep)
    $date = Get-Date -Format yyyyMMdd-hhmm
    $file = $path + $i +".bmp" 
    Add-Type -AssemblyName System.Windows.Forms
    Add-type -AssemblyName System.Drawing
    # Gather Screen resolution information
    $Screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
    $Width = $Screen.Width
    $Height = $Screen.Height
    $Left = $Screen.Left
    $Top = $Screen.Top
    # Create bitmap using the top-left and bottom-right bounds
    $bitmap = New-Object System.Drawing.Bitmap $Width, $Height
    # Create Graphics object
    $graphic = [System.Drawing.Graphics]::FromImage($bitmap)
    # Capture screen
    $graphic.CopyFromScreen($Left, $Top, 0, 0, $bitmap.Size)
    # Save to file
    $bitmap.Save($File)
    sleep 10 #***change number of secconds
    $i
 }