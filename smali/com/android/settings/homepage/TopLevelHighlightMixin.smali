.class public Lcom/android/settings/homepage/TopLevelHighlightMixin;
.super Ljava/lang/Object;
.source "TopLevelHighlightMixin.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/homepage/TopLevelHighlightMixin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityEmbedded:Z

.field private mCurrentKey:Ljava/lang/String;

.field private mDialog:Landroid/content/DialogInterface;

.field private mHiddenKey:Ljava/lang/String;

.field private mPreviousKey:Ljava/lang/String;

.field private mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/settings/homepage/TopLevelHighlightMixin$1;

    invoke-direct {v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin$1;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    return-void
.end method

.method private ensureDialogDismissed()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->onCancel(Landroid/content/DialogInterface;)V

    .line 197
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method private static getHighlightPrefKeyFromArguments(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    const-string v0, ":settings:fragment_args_key"

    .line 184
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {p0}, Lcom/android/settings/homepage/HighlightableMenu;->lookupPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TopLevelHighlightMixin"

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid highlight menu key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Menu key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method highlightPreferenceIfNeeded()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->requestHighlight()V

    :cond_0
    return-void
.end method

.method isActivityEmbedded()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    const/4 p0, 0x0

    .line 98
    invoke-virtual {p1, v0, p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method onCreateAdapter(Lcom/android/settings/homepage/TopLevelSettings;Landroidx/preference/PreferenceScreen;Z)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPrefKeyFromArguments(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateAdapter, pref key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TopLevelHighlightMixin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    .line 118
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/settings/homepage/SettingsHomepageActivity;

    .line 119
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    move-object v2, v0

    move-object v4, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/preference/PreferenceGroup;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method reloadHighlightMenuKey(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->ensureDialogDismissed()V

    .line 129
    invoke-static {p1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPrefKeyFromArguments(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reloadHighlightMenuKey, pref key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TopLevelHighlightMixin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method setActivityEmbedded(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    return-void
.end method

.method setHighlightMenuKey(Ljava/lang/String;Z)V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->ensureDialogDismissed()V

    .line 173
    invoke-static {p1}, Lcom/android/settings/homepage/HighlightableMenu;->lookupPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TopLevelHighlightMixin"

    if-eqz v1, :cond_1

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid highlight menu key: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Menu key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    .line 179
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method setHighlightPreferenceKey(Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->ensureDialogDismissed()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    .line 139
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method setMenuHighlightShowed(Z)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->ensureDialogDismissed()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    .line 162
    :cond_2
    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 60
    iget-object p2, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-boolean p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
