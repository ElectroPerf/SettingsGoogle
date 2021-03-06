.class Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;
.super Ljava/lang/Object;
.source "AvatarPhotoController.java"

# interfaces
.implements Lcom/android/settingslib/users/AvatarPhotoController$AvatarUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/AvatarPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvatarUiImpl"
.end annotation


# instance fields
.field private final mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    return-void
.end method


# virtual methods
.method public getPhotoSize()I
    .locals 1

    .line 342
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10502d5

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public isFinishing()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public returnUriResult(Landroid/net/Uri;)V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/AvatarPickerActivity;->returnUriResult(Landroid/net/Uri;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/users/AvatarPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startSystemActivityForResult(Landroid/content/Intent;I)Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No system package activity could be found for code "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AvatarPhotoController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 335
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/users/AvatarPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method
