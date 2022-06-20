.class public Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationAccessSeeAllPreferenceController.java"


# instance fields
.field private mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Landroidx/preference/Preference;

.field private final mRecentLocationAccesses:Lcom/android/settingslib/applications/RecentAppOpsAccess;

.field private mShowSystem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mShowSystem:Z

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "locationShowSystemOps"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p2, v1

    :cond_0
    iput-boolean p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mShowSystem:Z

    .line 53
    invoke-static {p1}, Lcom/android/settingslib/applications/RecentAppOpsAccess;->createForLocation(Landroid/content/Context;)Lcom/android/settingslib/applications/RecentAppOpsAccess;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mRecentLocationAccesses:Lcom/android/settingslib/applications/RecentAppOpsAccess;

    .line 54
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    return-void
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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setShowSystem(Z)V
    .locals 1

    .line 104
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mShowSystem:Z

    .line 105
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 71
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mRecentLocationAccesses:Lcom/android/settingslib/applications/RecentAppOpsAccess;

    iget-boolean v3, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mShowSystem:Z

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/RecentAppOpsAccess;->getAppListSorted(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;

    const/4 v4, 0x3

    .line 78
    invoke-static {v0, v3, v4}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    new-instance p1, Lcom/android/settingslib/widget/AppPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040bfb

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 91
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;

    .line 93
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 92
    invoke-static {v2, v1, v3}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settingslib/widget/AppPreference;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
