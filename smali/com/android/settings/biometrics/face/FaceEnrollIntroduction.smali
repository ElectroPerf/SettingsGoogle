.class public Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FaceEnrollIntroduction.java"


# instance fields
.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public static synthetic $r8$lambda$7a9YGZsAiPTisFTzCF9QQaQjAdw(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->lambda$getDescriptionDisabledByAdmin$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Fg2g0g3c2QrcxhX68ODGm4nW38Y(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->lambda$onCreate$0(IIJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method private synthetic lambda$getDescriptionDisabledByAdmin$1()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0411f9

    .line 230
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(IIJ)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p2, v0, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 154
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 155
    iput-wide p3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 156
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private maxFacesEnrolled()Z
    .locals 5

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 258
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    .line 260
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 261
    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v4, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0e0052

    .line 263
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-lt v3, p0, :cond_0

    move v2, v4

    :cond_0
    return v2

    :cond_1
    if-lt v3, v1, :cond_2

    move v2, v4

    :cond_2
    return v2
.end method


# virtual methods
.method protected checkMaxEnrolled()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f040972

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const p0, 0x7f040973

    return p0
.end method

.method protected generateChallengeOnCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getAgreeButtonTextRes()I
    .locals 0

    const p0, 0x7f041231

    return p0
.end method

.method protected getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
    .locals 2

    .line 289
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 291
    invoke-interface {p1, p0, p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    return-void

    .line 294
    :cond_0
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method protected getConfirmLockTitleResId()I
    .locals 0

    const p0, 0x7f041211

    return p0
.end method

.method protected getDescriptionDisabledByAdmin()Ljava/lang/String;
    .locals 2

    .line 227
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 228
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    const-string p0, "Settings.FACE_UNLOCK_DISABLED"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 2

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getErrorTextView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0d022b

    .line 251
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_face"

    return-object p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    const p0, 0x7f0411fc

    return p0
.end method

.method protected getHeaderResDisabledByAdmin()I
    .locals 0

    const p0, 0x7f0411fd

    return p0
.end method

.method protected getHowMessage()I
    .locals 0

    const p0, 0x7f0411ed

    return p0
.end method

.method protected getInControlMessage()I
    .locals 0

    const p0, 0x7f0411ea

    return p0
.end method

.method protected getInControlTitle()I
    .locals 0

    const p0, 0x7f0411eb

    return p0
.end method

.method protected getInfoMessageGlasses()I
    .locals 0

    const p0, 0x7f0411f3

    return p0
.end method

.method protected getInfoMessageLooking()I
    .locals 0

    const p0, 0x7f0411f5

    return p0
.end method

.method protected getInfoMessageRequireEyes()I
    .locals 0

    const p0, 0x7f0411f2

    return p0
.end method

.method protected getLayoutResource()I
    .locals 0

    const p0, 0x7f0600e9

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method public getModality()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected getMoreButtonTextRes()I
    .locals 0

    const p0, 0x7f0411fa

    return p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0411e5

    .line 356
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 357
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 358
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f130280

    .line 359
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method protected getSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0411fb

    .line 370
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 372
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f130280

    .line 373
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method protected isDisabledByAdmin()Z
    .locals 2

    .line 206
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, 0x80

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02d9

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0d02df

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 108
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p1, 0x7f0d0303

    .line 111
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0d0305

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d02ce

    .line 113
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0616

    .line 114
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d0394

    .line 115
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageGlasses()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageLooking()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInControlTitle()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getHowMessage()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInControlMessage()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f09000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0d0309

    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v1, 0x7f0d02dd

    .line 125
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f09000f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0d030a

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v1, 0x7f0d02e0

    .line 133
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0d0306

    .line 134
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageRequireEyes()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 146
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->generateChallengeOnCreate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    move-result-object p1

    const/4 v0, 0x2

    .line 165
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    .line 166
    invoke-virtual {p1, v0, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(II)Z

    move-result p0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cameraPrivacyEnabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceEnrollIntroduction"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x6

    const-string/jumbo v1, "skipped"

    .line 86
    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x6

    const-string v1, "finished"

    .line 94
    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onFinishedEnrolling(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 5

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "require_consent"

    const/4 v2, 0x0

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/4 v4, 0x2

    .line 336
    invoke-virtual {v1, v4, v3}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(II)Z

    move-result v1

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    .line 339
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 341
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-nez p1, :cond_2

    .line 342
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 345
    :cond_2
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v4}, Landroid/hardware/SensorPrivacyManager;->showSensorUseDialog(I)V

    goto :goto_0

    .line 347
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x6

    const-string/jumbo v1, "skip"

    .line 78
    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSkipButtonClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
