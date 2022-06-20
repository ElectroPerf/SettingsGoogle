.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;
.super Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;
.source "ColumbusGestureTrainingIntroActivity.java"


# static fields
.field private static final FROM_ACCIDENTAL_TRIGGER_CLASS:Ljava/lang/String; = "com.google.android.settings.gestures.columbus.ColumbusGestureTrainingIntroActivity"


# direct methods
.method public static synthetic $r8$lambda$SvL_u5wQNPNlnvXh1phQA2IWJ8o(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->onCancelButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jUkQOn8zSSOEYDMWvYAv1tWinKU(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->onNextButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;-><init>()V

    return-void
.end method

.method private getFlowType()Ljava/lang/String;
    .locals 2

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isSetupWizardIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "setup"

    return-object p0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeferredSetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "deferred_setup"

    return-object p0

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.settings.gestures.ColumbusGestureSuggestion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "settings_suggestion"

    return-object p0

    .line 119
    :cond_2
    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->FROM_ACCIDENTAL_TRIGGER_CLASS:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "accidental_trigger"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x65

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private onNextButtonClicked(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->startEnrollingActivity()V

    return-void
.end method

.method private startEnrollingActivity()V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->getFlowType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launched_from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d4

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 79
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusSupported(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 46
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "columbus_suw_complete"

    const/4 v2, 0x0

    .line 42
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->launchColumbusGestureSettings(I)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const p1, 0x7f060093

    .line 53
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0d034d

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f040660

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    .line 56
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 57
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040651

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f130280

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 65
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04064f

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v0, 0x2

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const v0, 0x7f130281

    .line 70
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public onTrigger()V
    .locals 0

    return-void
.end method
