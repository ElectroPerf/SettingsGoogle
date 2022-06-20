.class public Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothFindBroadcastsHeaderController.java"


# instance fields
.field mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

.field mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

.field mBtnBroadcastLayout:Landroid/widget/LinearLayout;

.field mBtnFindBroadcast:Landroid/widget/Button;

.field mBtnLeaveBroadcast:Landroid/widget/Button;

.field mBtnScanQrCode:Landroid/widget/Button;

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mSummary:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$3abGvcyJBJHHyVNtcCEWKRFjSqA(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->lambda$refresh$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQwIeOAvPFKMXWWs7qDHlhqRvWI(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->lambda$refresh$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZrmv4Qno1XzB3vGW0JwooVa_is(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->lambda$refresh$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 62
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    return-void
.end method

.method private isBroadcastSourceExist()Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$refresh$0(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->scanBroadcastSource()V

    return-void
.end method

.method private synthetic lambda$refresh$1(Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->leaveBroadcastSession()V

    return-void
.end method

.method private synthetic lambda$refresh$2(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->launchQrCodeScanner()V

    return-void
.end method

.method private launchQrCodeScanner()V
    .locals 4

    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settingslib/qrcode/QrCodeScanModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.settings.BLUETOOTH_LE_AUDIO_QR_CODE_SCANNER"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bluetooth_sink_is_group"

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 140
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const-string v3, "bluetooth_device_sink"

    .line 139
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private leaveBroadcastSession()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    if-nez p0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->leaveBroadcastSession()V

    return-void
.end method

.method private scanBroadcastSource()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    if-nez p0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->scanBroadcastSource()V

    return-void
.end method

.method private updateHeaderLayout()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->isBroadcastSourceExist()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnLeaveBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 113
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 115
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnLeaveBroadcast:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_find_broadcast_header"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "bluetooth_find_broadcast_header"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "broadcast_source_list"

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refresh()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method protected refresh()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0d0223

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mTitle:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d0221

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mSummary:Landroid/widget/TextView;

    const-string v1, ""

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d0139

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    .line 85
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d0138

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d013b

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnLeaveBroadcast:Landroid/widget/Button;

    .line 88
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d013d

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnScanQrCode:Landroid/widget/Button;

    .line 90
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->updateHeaderLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshUi()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->updateHeaderLayout()V

    return-void
.end method
