<?php
function upload_foto($File, $mode = 'add', $oldFile = null)
{
    $uploadOk = 1;
    $hasil = array();
    $message = '';

    // File properties:
    $FileName = $File['name'];
    $TmpLocation = $File['tmp_name'];
    $FileSize = $File['size'];

    // Determine file extension:
    $FileExt = explode('.', $FileName);
    $FileExt = strtolower(end($FileExt));

    // Allowed file types:
    $Allowed = array('jpg', 'png', 'gif', 'jpeg');

    // Check file size
    if ($FileSize > 500000) {
        $message .= "File terlalu besar, maksimal 500KB. ";
        $uploadOk = 0;
    }

    // Allow certain file formats
    if (!in_array($FileExt, $Allowed)) {
        $message .= "Hanya file JPG, JPEG, PNG & GIF yang diperbolehkan. ";
        $uploadOk = 0;
    }

    // If an error occurred
    if ($uploadOk == 0) {
        $message .= "File tidak diunggah. ";
        $hasil['status'] = false;
    } else {
        // Generate new file name:
        $NewName = date("YmdHis") . '.' . $FileExt;
        $UploadDestination = "img/" . $NewName;

        // Replace mode: Remove old file if exists
        if ($mode === 'replace' && $oldFile) {
            $oldFilePath = "img/" . $oldFile;
            if (file_exists($oldFilePath)) {
                unlink($oldFilePath);
            }
        }

        // Move new file to destination
        if (move_uploaded_file($TmpLocation, $UploadDestination)) {
            $message .= $NewName;
            $hasil['status'] = true;
            $hasil['file_name'] = $NewName;
        } else {
            $message .= "Terjadi kesalahan saat mengunggah file. ";
            $hasil['status'] = false;
        }
    }

    $hasil['message'] = $message;
    return $hasil;
}
?>