.class Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;
.super Landroidx/preference/Preference;
.source "BluetoothBroadcastSourcePreference.java"


# instance fields
.field private mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field private mFrictionImageView:Landroid/widget/ImageView;

.field private mIsEncrypted:Z

.field private mStatus:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$YS8T8Hh_uD_gHigCxyHTzsPabr8(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->lambda$getBroadcastMetadataProgramInfo$0(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lFR8kXUF9Uzj4wtiFP-6KRjrmp8(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->lambda$getBroadcastMetadataProgramInfo$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->initUi()V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method private getBroadcastMetadataProgramInfo()Ljava/lang/String;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const v1, 0x7f040827

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda0;-><init>()V

    .line 137
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda1;-><init>()V

    .line 138
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private initUi()V
    .locals 3

    const v0, 0x7f060192

    .line 69
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const v0, 0x7f060030

    .line 70
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mStatus:Z

    .line 73
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020446

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010429

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 77
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getBroadcastMetadataProgramInfo$0(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Ljava/lang/String;
    .locals 0

    .line 137
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getProgramInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getBroadcastMetadataProgramInfo$1(Ljava/lang/String;)Z
    .locals 0

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private refresh()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateStatusButton()V

    return-void
.end method

.method private updateStatusButton()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mFrictionImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mStatus:Z

    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mIsEncrypted:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 99
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010429

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mFrictionImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mFrictionImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d0634

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d02d3

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0x8

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0d0273

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mFrictionImageView:Landroid/widget/ImageView;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateStatusButton()V

    return-void
.end method

.method public updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 108
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBroadcastMetadataProgramInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mIsEncrypted:Z

    .line 110
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mStatus:Z

    .line 112
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->refresh()V

    return-void
.end method
