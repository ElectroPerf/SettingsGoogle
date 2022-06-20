.class public Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeSendersImagePreferenceController.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private final mIsMessages:Z


# direct methods
.method private getPrioritySenders()I
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p0

    return p0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0d06a1

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->getPrioritySenders()I

    move-result p1

    if-nez p1, :cond_1

    .line 76
    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0204a7

    goto :goto_0

    :cond_0
    const p1, 0x7f0204a3

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f041933

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 81
    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_2

    const p1, 0x7f0204a8

    goto :goto_1

    :cond_2
    const p1, 0x7f0204a4

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f041934

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_5

    .line 86
    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_4

    const p1, 0x7f0204aa

    goto :goto_2

    :cond_4
    const p1, 0x7f0204a6

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f041939

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 91
    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_6

    const v0, 0x7f0204a9

    goto :goto_3

    :cond_6
    const v0, 0x7f0204a5

    .line 94
    :goto_3
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_7

    const p1, 0x7f041945

    goto :goto_4

    :cond_7
    const p1, 0x7f041944

    .line 95
    :goto_4
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move v2, v0

    move-object v0, p1

    move p1, v2

    .line 100
    :goto_5
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
