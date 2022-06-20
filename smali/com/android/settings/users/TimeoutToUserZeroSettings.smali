.class public Lcom/android/settings/users/TimeoutToUserZeroSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "TimeoutToUserZeroSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/TimeoutToUserZeroSettings$TimeoutCandidateInfo;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/String;

.field private mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/android/settings/users/TimeoutToUserZeroSettings;->mEntries:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/TimeoutToUserZeroSettings;->mValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/android/settings/users/TimeoutToUserZeroSettings;->mValues:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 77
    new-instance v3, Lcom/android/settings/users/TimeoutToUserZeroSettings$TimeoutCandidateInfo;

    iget-object v4, p0, Lcom/android/settings/users/TimeoutToUserZeroSettings;->mEntries:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v2, v2, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lcom/android/settings/users/TimeoutToUserZeroSettings$TimeoutCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string/jumbo v2, "timeout_to_user_zero"

    .line 85
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/TimeoutToUserZeroSettings;->mValues:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    :goto_0
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15010d

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0100ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/TimeoutToUserZeroSettings;->mEntries:[Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0100cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/TimeoutToUserZeroSettings;->mValues:[Ljava/lang/String;

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 93
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "timeout_to_user_zero"

    .line 92
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method
