.class public Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothFindBroadcastsFragment.java"


# instance fields
.field mBluetoothFindBroadcastsHeaderController:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

.field private mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mDeviceAddress:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

.field private mSourceId:I


# direct methods
.method public static synthetic $r8$lambda$NsWkeVHxDUDy5yTrVvY-NnHZojg(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->lambda$addSource$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$nyZFYeim3KWmMcPHpMcJoKHcCKM(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->lambda$createBluetoothBroadcastSourcePreference$0(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r2lzL4P2KqXsRHe1G94gY2eqbK8(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->lambda$launchBroadcastCodeDialog$2(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedPreference(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectedPreference(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateListCategory(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->updateListCategory(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    .line 163
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method private addBroadcastCodeIntoPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Ljava/lang/String;)V
    .locals 1

    .line 366
    new-instance p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 367
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 368
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p0

    .line 369
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p0

    const/4 p2, 0x0

    .line 370
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method private addSource(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    .line 360
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 361
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    const/4 v1, 0x1

    .line 360
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "addSource: LeBroadcastAssistant or CachedDevice is null!"

    .line 347
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createBluetoothBroadcastSourcePreference(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;
    .locals 2

    .line 331
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 333
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 334
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method private getScanFilter()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addSource$1()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    .line 355
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v1

    const/4 v2, 0x0

    .line 354
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    .line 356
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method private synthetic lambda$createBluetoothBroadcastSourcePreference$0(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 335
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->launchBroadcastCodeDialog(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addSource(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$launchBroadcastCodeDialog$2(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "BtFindBroadcastsFrg"

    const-string/jumbo p4, "setPositiveButton: clicked"

    .line 385
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addBroadcastCodeIntoPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addSource(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    return-void
.end method

.method private launchBroadcastCodeDialog(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V
    .locals 5

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f060073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0114

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0d0112

    .line 377
    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 378
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0409ad

    .line 380
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 381
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;)V

    const p0, 0x7f040478

    .line 383
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 389
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 391
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 392
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateListCategory(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    .line 315
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    if-nez v0, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->createBluetoothBroadcastSourcePreference(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 320
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 321
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 324
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBluetoothFindBroadcastsHeaderController:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    if-eqz p0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refreshUi()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    .line 281
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBluetoothFindBroadcastsHeaderController:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method finishFragmentIfNecessary()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 174
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 175
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;
    .locals 2

    .line 293
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    const-string v1, "BtFindBroadcastsFrg"

    if-nez p0, :cond_0

    const-string p0, "getLeBroadcastAssistant: LocalBluetoothManager is null!"

    .line 294
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getLeBroadcastAssistant: LocalBluetoothProfileManager is null!"

    .line 300
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastAssistantProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p0

    return-object p0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 168
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BtFindBroadcastsFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15003b

    return p0
.end method

.method public getSourceId()I
    .locals 0

    .line 396
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSourceId:I

    return p0
.end method

.method public leaveBroadcastSession()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getSourceId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->removeSource(Landroid/bluetooth/BluetoothDevice;I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "BtFindBroadcastsFrg"

    const-string v0, "leaveBroadcastSession: LeBroadcastAssistant or CachedDevice is null!"

    .line 259
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mDeviceAddress:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 182
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 184
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mExecutor:Ljava/util/concurrent/Executor;

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 187
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string p1, "BtFindBroadcastsFrg"

    const-string v0, "onAttach() CachedDevice or LeBroadcastAssistant is null!"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "broadcast_source_list"

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->finishFragmentIfNecessary()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->isSearchInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getScanFilter()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 205
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 223
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_0

    .line 225
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_0
    return-void
.end method

.method public scanBroadcastSource()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_0

    const-string p0, "BtFindBroadcastsFrg"

    const-string/jumbo v0, "scanBroadcastSource: LeBroadcastAssistant is null!"

    .line 248
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getScanFilter()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;)V

    return-void
.end method

.method public setSourceId(I)V
    .locals 0

    .line 400
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSourceId:I

    return-void
.end method
