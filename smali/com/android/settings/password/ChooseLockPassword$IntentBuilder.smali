.class public Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPassword;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string p0, "confirm_credentials"

    const/4 p1, 0x0

    .line 125
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "extra_require_password"

    .line 126
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setForBiometrics(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_biometrics"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFace(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setPassword(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setPasswordRequirement(ILandroid/app/admin/PasswordMetrics;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "min_complexity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v0, "min_metrics"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setPasswordType(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "unification_profile_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v0, "unification_profile_credential"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "request_gk_pw_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
