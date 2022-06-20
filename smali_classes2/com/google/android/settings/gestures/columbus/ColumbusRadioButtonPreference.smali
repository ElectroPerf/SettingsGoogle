.class public Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;
.super Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
.source "ColumbusRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;
    }
.end annotation


# instance fields
.field private mContextualSummaryProvider:Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;

.field private mExtraWidgetView:Landroid/widget/ImageView;

.field private mMetric:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateAccessibilityDescription()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mExtraWidgetView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040668

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v3, v4

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method getMetric()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mMetric:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d051e

    .line 33
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mExtraWidgetView:Landroid/widget/ImageView;

    .line 35
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->updateAccessibilityDescription()V

    return-void
.end method

.method setContextualSummaryProvider(Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mContextualSummaryProvider:Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;

    return-void
.end method

.method setMetric(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mMetric:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->updateAccessibilityDescription()V

    return-void
.end method

.method updateSummary(Landroid/content/Context;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mContextualSummaryProvider:Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
