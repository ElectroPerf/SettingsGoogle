.class public Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FaceEnrollEducation.java"


# instance fields
.field private mAccessibilityEnabled:Z

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mIllustrationAccessibility:Landroid/view/View;

.field private mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

.field private mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

.field private mIsUsingLottie:Z

.field private mNextClicked:Z

.field private mResultIntent:Landroid/content/Intent;

.field private mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

.field private final mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public static synthetic $r8$lambda$R2YGJFGC1CQmIpCjam_M1SAXP0Y(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLz5aOdWeIhL4kq4fq1sQmc68cw(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onCreate$0(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vg9OQVPFvPbWujLVnsLJalTvO98(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onNextButtonClick$2(Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIllustrationAccessibility(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideDefaultIllustration(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->hideDefaultIllustration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDefaultIllustration(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->showDefaultIllustration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceEnrollEducation;I)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method

.method private hideDefaultIllustration()V
    .locals 2

    .line 250
    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 252
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    .line 255
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setChecked(Z)V

    const/16 p2, 0x8

    .line 142
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    return-void
.end method

.method private synthetic lambda$onNextButtonClick$2(Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x2

    .line 208
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mNextClicked:Z

    return-void
.end method

.method private showDefaultIllustration()V
    .locals 2

    .line 260
    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    .line 265
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 228
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 229
    iput-object p3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 231
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    :cond_1
    if-eq p2, v0, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/16 p1, 0xb

    if-ne p2, p1, :cond_3

    .line 238
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0600e6

    .line 80
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0411d4

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f0411d1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 85
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    const p1, 0x7f0d02ee

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    const p1, 0x7f0d02f0

    .line 88
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const p1, 0x7f0d02ed

    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f09000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    .line 94
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f030012

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    const v1, 0x7f130281

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f04134b

    .line 105
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 106
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    const/4 v3, 0x7

    .line 107
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 103
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0411e6

    .line 114
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 115
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 116
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 122
    :goto_0
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0411d3

    .line 123
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 124
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v1, 0x5

    .line 125
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const v1, 0x7f130280

    .line 126
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_3

    .line 134
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    const p1, 0x7f0d0012

    .line 139
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 140
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d061b

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 147
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    if-eqz p0, :cond_4

    .line 153
    invoke-virtual {p1}, Landroid/widget/Button;->callOnClick()Z

    :cond_4
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 3

    .line 180
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-eqz v0, :cond_0

    const-string v1, "hw_auth_token"

    .line 182
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 184
    :cond_0
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 185
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    const-string v2, "challenge"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    const-string/jumbo v1, "sensor_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const v0, 0x7f0406ae

    .line 191
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 196
    :cond_2
    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "accessibility_diversity"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_4

    .line 206
    invoke-static {}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;->newInstance()Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    .line 213
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mNextClicked:Z

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 159
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 161
    invoke-virtual {v2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v2

    .line 160
    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x6

    const-string v0, "edu_skip"

    .line 219
    invoke-static {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 221
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
