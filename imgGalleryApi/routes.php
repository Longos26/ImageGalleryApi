<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE');
header('Access-Control-Allow-Headers: Content-Type, Authorization');
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

require_once 'config.php';
require_once 'modules/get.php';
require_once 'modules/post.php';

$get = new Get();
$post = new Post();

if (isset($_REQUEST['request'])) {
    $request = explode('/', $_REQUEST['request']);
} else {
    echo json_encode(["error" => "Not Found"]);
    http_response_code(404);
    exit();
}

switch ($_SERVER['REQUEST_METHOD']) {
    case 'GET':
        switch ($request[0]) {
            case 'get-images':
                echo json_encode($get->get_images());
                break;
            case 'get-images-by-id':
                if (isset($request[1])) {
                    echo json_encode($get->get_images_by_id($request[1]));
                } else {
                    echo json_encode(["error" => "Unique ID is required."]);
                    http_response_code(400);
                }
                break;
            case 'download-image':
                    if (isset($request[1])) {
                        $get->download_image($request[1]);
                    } else {
                        echo json_encode(["error" => "Image ID is required."]);
                        http_response_code(400);
                    }
                break;
            case 'fetch-image':
                if (isset($_GET['url'])) {
                    $get->fetch_image($_GET['url']);
                } else {
                    echo json_encode(["error" => "URL parameter is required."]);
                    http_response_code(400);
                }
                break;
            case 'fetch_profile':
                if (isset($request[1])) {
                    echo json_encode($get->fetch_profile($request[1]));
                } else {
                    echo json_encode(["error" => "Profile ID is required."]);
                    http_response_code(400);
                }
                break;
            case 'get_unique_id':
                    if (isset($request[1])) {
                        echo json_encode($get->get_unique_id($request[1]));
                    } else {
                        echo json_encode(["error" => "Username is required."]);
                        http_response_code(400);
                    }
                    break;
            default:
                echo json_encode(["error" => "This is forbidden"]);
                http_response_code(403);
                break;
        }
        break;
    case 'POST':
        $data = json_decode(file_get_contents("php://input"), true);
        switch ($request[0]) {
            case 'login':
                echo json_encode($post->login($data));
                break;
            case 'register':
                echo json_encode($post->register($data));
                break;
            case 'saveProfile':
                echo json_encode($post->saveProfile($data));
                break;
            case 'upload-image':
                echo json_encode($post->upload_image());
                break;
            case 'upload-image-with-id':
                if (isset($_FILES['image']) && isset($_POST['unique_id'])) {
                    echo json_encode($post->upload_image_with_id($_POST['unique_id']));
                } else {
                    echo json_encode(["error" => "Image file and unique ID are required."]);
                    http_response_code(400);
                }
                break;
            default:
                echo json_encode(["error" => "This is forbidden"]);
                http_response_code(403);
                break;
        }
        break;
    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"), true);
        switch ($request[0]) {
            case 'delete-image':
                echo json_encode($post->delete_image($data));
                break;
            default:
                echo json_encode(["error" => "This is forbidden"]);
                http_response_code(403);
                break;
        }
        break;
    default:
        echo json_encode(["error" => "Method not available"]);
        http_response_code(404);
        break;
}
?>
