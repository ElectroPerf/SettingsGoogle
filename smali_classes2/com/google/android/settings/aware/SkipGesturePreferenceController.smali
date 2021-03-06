.class public Lcom/google/android/settings/aware/SkipGesturePreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "SkipGesturePreferenceController.java"

# interfaces
.implements Lcom/google/android/settings/aware/AwareHelper$Callback;


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_skip_video"

.field public static final VIDEO_HEIGHT_DP:F = 310.0f


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

.field private mHelper:Lcom/google/android/settings/aware/AwareHelper;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    .line 36
    new-instance p2, Lcom/google/android/settings/aware/AwareHelper;

    invoke-direct {p2, p1}, Lcom/google/android/settings/aware/AwareHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    return-void
.end method


# virtual methods
.method protected canHandleClicks()Z
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result p0

    return p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/gestures/GesturePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "gesture_skip_video"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/VideoPreference;

    const/high16 v1, 0x439b0000    # 310.0f

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->setHeight(F)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/aware/AwareFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_skip_video"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/aware/AwareFeatureProvider;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "skip_gesture"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Landroid/net/Uri;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/GesturePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/aware/AwareHelper;->register(Lcom/google/android/settings/aware/AwareHelper$Callback;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->unregister()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/google/android/settings/aware/SkipGesturePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    const-string v1, "skip_gesture"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
