.class Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "FaceEnrollPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method constructor <init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 217
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 218
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fputmCameraDevice(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 223
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 224
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fputmCameraDevice(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fputmCameraDevice(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)V

    .line 159
    :try_start_0
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmTextureViewDestroyed(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Z

    move-result p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "FaceEnroll/PreviewFragment"

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "Texture view destroyed but camera is open"

    .line 160
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmTextureView(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/google/android/settings/biometrics/face/SquareTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Error the surface texture was not attached to the window"

    .line 164
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmTextureView(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/google/android/settings/biometrics/face/SquareTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmPreviewSize(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmPreviewSize(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 170
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 173
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmCameraDevice(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    .line 174
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fputmPreviewRequestBuilder(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 175
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmPreviewRequestBuilder(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 175
    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmPreviewRequestBuilder(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 180
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->-$$Nest$fgetmCameraDevice(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    new-array v1, v2, [Landroid/view/Surface;

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
