.class public Lcom/android/settings/wifi/LongPressWifiEntryPreference;
.super Lcom/android/settings/wifi/WifiEntryPreference;
.source "LongPressWifiEntryPreference.java"


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 35
    iput-object p3, p0, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiEntryPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 43
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->refresh()V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->shouldEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method shouldEnabled()Z
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
