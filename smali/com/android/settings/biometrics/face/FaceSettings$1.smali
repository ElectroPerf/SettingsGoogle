.class Lcom/android/settings/biometrics/face/FaceSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "FaceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 329
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method

.method private hasEnrolledBiometrics(Landroid/content/Context;)Z
    .locals 0

    .line 380
    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 382
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isAttentionSupported(Landroid/content/Context;)Z
    .locals 0

    .line 370
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 374
    invoke-interface {p0, p1}, Lcom/android/settings/biometrics/face/FaceFeatureProvider;->isAttentionSupported(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->isFaceHardwareDetected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 335
    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->-$$Nest$smbuildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 353
    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->isFaceHardwareDetected(Landroid/content/Context;)Z

    move-result v1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get non indexable keys. isFaceHardwareDetected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceSettings"

    .line 354
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 357
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettings$1;->hasEnrolledBiometrics(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "security_settings_face_enroll_faces_container"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "security_settings_face_delete_faces_container"

    .line 358
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettings$1;->isAttentionSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "security_settings_face_require_attention"

    .line 363
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 343
    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->isFaceHardwareDetected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettings$1;->hasEnrolledBiometrics(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
