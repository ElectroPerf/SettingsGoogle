.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FingerprintEnrollFinish.java"


# static fields
.field static final FINGERPRINT_SUGGESTION_ACTIVITY:Ljava/lang/String; = "com.android.settings.SetupFingerprintSuggestionActivity"

.field static final REQUEST_ADD_ANOTHER:I = 0x1


# direct methods
.method public static synthetic $r8$lambda$L9L_wW2i8ie-VRDkmUEvHkKohoc(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onAddAnotherButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method

.method private launchFingerprintSettings()V
    .locals 4

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FINGERPRINT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-wide v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f070037

    const v1, 0x7f070038

    .line 159
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private onAddAnotherButtonClick(Landroid/view/View;)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getFingerprintEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private postEnroll()V
    .locals 4

    .line 145
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    iget-wide v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    :cond_0
    return-void
.end method

.method private updateFingerprintSuggestionEnableState()V
    .locals 6

    .line 125
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 136
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings.SetupFingerprintSuggestionActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.settings.SetupFingerprintSuggestionActivity enabled state = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintEnrollFinish"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf2

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->updateFingerprintSuggestionEnableState()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 173
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->updateFingerprintSuggestionEnableState()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0600f4

    .line 58
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f04122f

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    const p1, 0x7f041230

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 63
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0409b3

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f130281

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f041227

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v0, 0x5

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const v0, 0x7f130280

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->updateFingerprintSuggestionEnableState()V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->postEnroll()V

    goto :goto_0

    .line 117
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    if-eqz p1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->launchFingerprintSettings()V

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 90
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 94
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v3

    .line 99
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v3, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 100
    iget v4, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    const/4 p0, 0x4

    .line 105
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_1
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;)V

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method