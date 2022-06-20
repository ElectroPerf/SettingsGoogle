.class public abstract Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricEnrollIntroduction.java"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;
    }
.end annotation


# instance fields
.field private mBiometricUnlockDisabledByAdmin:Z

.field protected mConfirmingCredentials:Z

.field private mErrorText:Landroid/widget/TextView;

.field private mHasPassword:Z

.field private mHasScrolledToBottom:Z

.field private mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected mNextClicked:Z

.field private mParentalConsentRequired:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$5L7D5qzCYLTmLGORfb92ENDCTYs(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->lambda$onActivityResult$2(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_uspg03h_qdjMLMa7fz5wTpB8Y(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jr7qilcFH2aP0g0kXdx15_H9BwY(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->lambda$onCreate$0(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasScrolledToBottom:Z

    return-void
.end method

.method private handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v1, "skip_pending_enroll"

    .line 375
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enroll_after_face"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 381
    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 383
    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onFinishedEnrolling(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static isResultSkipOrFinished(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 322
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 323
    iput-wide p4, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 324
    iget p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 326
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$2(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 342
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 343
    iput-wide p4, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 344
    iget p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 346
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Z)V
    .locals 4

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getMoreButtonTextRes()I

    move-result v0

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getAgreeButtonTextRes()I

    move-result v0

    .line 216
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    :cond_2
    if-nez p1, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 222
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasScrolledToBottom:Z

    :cond_3
    return-void
.end method

.method private launchChooseLock()V
    .locals 4

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "request_gk_pw_handle"

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getExtraKeyForBiometric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    .line 284
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchNextEnrollingActivity([B)V
    .locals 3

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 292
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 294
    :cond_0
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 295
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 298
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    iget-wide v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    const-string p1, "challenge"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 300
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    const-string/jumbo v1, "sensor_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 301
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 257
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    .line 258
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    return-void
.end method


# virtual methods
.method protected abstract checkMaxEnrolled()I
.end method

.method protected abstract getAgreeButtonTextRes()I
.end method

.method protected abstract getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
.end method

.method protected abstract getConfirmLockTitleResId()I
.end method

.method protected abstract getDescriptionDisabledByAdmin()Ljava/lang/String;
.end method

.method protected abstract getEnrollingIntent()Landroid/content/Intent;
.end method

.method protected abstract getErrorTextView()Landroid/widget/TextView;
.end method

.method protected abstract getExtraKeyForBiometric()Ljava/lang/String;
.end method

.method protected abstract getHeaderResDefault()I
.end method

.method protected abstract getHeaderResDisabledByAdmin()I
.end method

.method protected getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    .line 430
    invoke-static {p0, v1}, Lcom/google/android/setupdesign/util/DynamicColorPalette;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 433
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object p0
.end method

.method protected abstract getLayoutResource()I
.end method

.method public abstract getModality()I
.end method

.method protected abstract getMoreButtonTextRes()I
.end method

.method protected abstract getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
.end method

.method protected abstract getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
.end method

.method protected abstract getSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
.end method

.method protected initViews()V
    .locals 1

    .line 419
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->initViews()V

    .line 421
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mParentalConsentRequired:Z

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getDescriptionDisabledByAdmin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected abstract isDisabledByAdmin()Z
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 307
    invoke-static {p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->isResultSkipOrFinished(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-direct {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    if-ne p2, v0, :cond_8

    .line 310
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f07003a

    const v2, 0x7f070039

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_3

    .line 314
    iput-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-ne p2, v3, :cond_2

    .line 316
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    .line 317
    invoke-virtual {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSetOrConfirmCredentials(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 319
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 321
    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 335
    iput-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 337
    invoke-virtual {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSetOrConfirmCredentials(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 339
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 341
    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    goto :goto_0

    .line 351
    :cond_4
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_6

    const v0, 0x7f070037

    const v1, 0x7f070038

    .line 355
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENROLL_NEXT_BIOMETRIC_REQUEST, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricEnrollIntroduction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->isResultSkipOrFinished(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 359
    invoke-direct {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 361
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 365
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "confirming_credentials"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    const-string/jumbo v0, "scrolled"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasScrolledToBottom:Z

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "theme"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 165
    invoke-static {p1}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->isDisabledByAdmin()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getLayoutResource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getModality()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mParentalConsentRequired:Z

    .line 173
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getHeaderResDisabledByAdmin()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getHeaderResDefault()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 179
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getErrorTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    .line 181
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 182
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    .line 184
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-nez p1, :cond_5

    .line 185
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    if-nez p1, :cond_4

    .line 187
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    .line 188
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchChooseLock()V

    goto :goto_2

    .line 189
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_5

    .line 193
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getConfirmLockTitleResId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->launchConfirmLock(I)V

    .line 198
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    .line 199
    const-class v2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v2

    check-cast v2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 201
    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 203
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasScrolledToBottom:Z

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x4

    .line 202
    :goto_3
    invoke-virtual {v1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 205
    const-class v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getMoreButtonTextRes()I

    move-result v1

    new-instance v2, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;)V

    .line 206
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V

    .line 208
    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    .line 408
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 264
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNextClicked:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchNextEnrollingActivity([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const-string v1, "enrollIntroduction#onNextButtonClicked"

    .line 269
    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 229
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040896

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 246
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    const-string v1, "confirming_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasScrolledToBottom:Z

    const-string/jumbo v0, "scrolled"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSetOrConfirmCredentials(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 253
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
