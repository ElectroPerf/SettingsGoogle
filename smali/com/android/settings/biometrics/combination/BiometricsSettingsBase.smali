.class public abstract Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BiometricsSettingsBase.java"


# instance fields
.field private mConfirmCredential:Z

.field private mDoNotFinishActivity:Z

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field protected mGkPwHandle:J

.field protected mUserId:I


# direct methods
.method public static synthetic $r8$lambda$U955xRnAGMDsdEUnha2-o4otBT0(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroidx/preference/Preference;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->lambda$onPreferenceTreeClick$1(Landroidx/preference/Preference;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$eDRfoRRsuw-mdHCluLkij1PcXuU(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroidx/preference/Preference;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->lambda$onPreferenceTreeClick$0(Landroidx/preference/Preference;IIJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getUseAnyBiometricSummary()Ljava/lang/String;
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 246
    :goto_0
    iget-object v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    .line 247
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 249
    :goto_1
    invoke-static {v0, v1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseBiometricSummaryRes(ZZ)I

    move-result v0

    if-nez v0, :cond_2

    const-string p0, ""

    goto :goto_2

    .line 250
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private static getUseBiometricSummaryRes(ZZ)I
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const p0, 0x7f04044a

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const p0, 0x7f04044b

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f04044c

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private getUseClass2BiometricSummary()Ljava/lang/String;
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 259
    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    if-eq v4, v3, :cond_1

    if-ne v4, v1, :cond_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 268
    :goto_0
    iget-object v4, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_5

    .line 270
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 271
    iget v5, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    if-eq v5, v3, :cond_4

    if-ne v5, v1, :cond_3

    :cond_4
    move v2, v3

    .line 279
    :cond_5
    invoke-static {v0, v2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseBiometricSummaryRes(ZZ)I

    move-result v0

    if-nez v0, :cond_6

    const-string p0, ""

    goto :goto_1

    .line 280
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private synthetic lambda$onPreferenceTreeClick$0(Landroidx/preference/Preference;IIJ)V
    .locals 6

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    iget v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    .line 138
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hw_auth_token"

    .line 139
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo p3, "sensor_id"

    .line 140
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "challenge"

    .line 141
    invoke-virtual {v0, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private synthetic lambda$onPreferenceTreeClick$1(Landroidx/preference/Preference;IIJ)V
    .locals 6

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    iget v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p2

    .line 151
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "hw_auth_token"

    .line 152
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "challenge"

    .line 153
    invoke-virtual {p3, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 4

    .line 214
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x7d1

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const v1, 0x7f0411ca

    .line 217
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 221
    iget v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 222
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 224
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    .line 225
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "hide_insecure_options"

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "request_gk_pw_handle"

    .line 231
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "for_biometrics"

    .line 232
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "page_transition_type"

    .line 233
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    if-eq v1, v3, :cond_1

    const-string v2, "android.intent.extra.USER_ID"

    .line 237
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const/16 v1, 0x7d2

    .line 239
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract getFacePreferenceKey()Ljava/lang/String;
.end method

.method public abstract getFingerprintPreferenceKey()Ljava/lang/String;
.end method

.method public abstract getUnlockPhonePreferenceKey()Ljava/lang/String;
.end method

.method public abstract getUseInAppsPreferenceKey()Ljava/lang/String;
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 175
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_4

    :cond_0
    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    .line 178
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Password not confirmed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    .line 180
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 181
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Data null or GK PW missing."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "confirm_credential"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    const-string v0, "do_not_finish_activity"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    const-string/jumbo v0, "request_gk_pw_handle"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    .line 94
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    .line 96
    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->launchChooseOrConfirmLock()V

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUnlockPhonePreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 101
    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseAnyBiometricSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseInAppsPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 106
    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseClass2BiometricSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 129
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getFacePreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 134
    iput-boolean v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    new-instance v3, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v1, v3}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return v2

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getFingerprintPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iput-boolean v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    new-instance v3, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return v2

    .line 160
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    const-string v1, "confirm_credential"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    const-string v1, "do_not_finish_activity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    iget-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const-string/jumbo p0, "request_gk_pw_handle"

    .line 169
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 120
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
