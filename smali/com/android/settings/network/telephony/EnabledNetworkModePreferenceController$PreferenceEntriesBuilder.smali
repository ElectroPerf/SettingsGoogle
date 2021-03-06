.class final Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
.super Ljava/lang/Object;
.source "EnabledNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferenceEntriesBuilder"
.end annotation


# instance fields
.field private mAllowed5gNetworkType:Z

.field private mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIs5gEntryDisplayed:Z

.field private mIsGlobalCdma:Z

.field private mSelectedEntry:I

.field private mShow4gForLTE:Z

.field private mSubId:I

.field private mSummary:Ljava/lang/String;

.field private mSupported5gRadioAccessFamily:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;


# direct methods
.method public static synthetic $r8$lambda$Zvd0d2P7Edu7a0T0X-ZU3ubwnfQ(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->lambda$getEntryValues$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bdNJaZsFswsss8Mofvb6lZLMWZM(ILjava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->lambda$setSelectedEntry$2(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pVrZoHN-joHwxA_DrSTmo71fjHg(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;Ljava/util/List;Z[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->lambda$setPreferenceEntries$0(Ljava/util/List;Z[II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetEntries(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEntries()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEntryValues(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEntryValues()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSelectedEntryValue(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getSelectedEntryValue()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSummary(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetPreferenceValueAndSummary(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/content/Context;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    .line 208
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    .line 211
    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    .line 212
    iput p3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 213
    invoke-static {p2}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    .line 214
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 215
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->updateConfig()V

    return-void
.end method

.method private add1xEntry(I)V
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e28

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add2gEntry(I)V
    .locals 3

    .line 767
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e29

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add3gEntry(I)V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add4gEntry(I)V
    .locals 3

    .line 753
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e2c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e2b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add5gEntry(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 709
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040e2d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    goto :goto_1

    .line 714
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hide 5G option.  supported5GRadioAccessFamily: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " allowed5GNetworkType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isNRValue: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnabledNetworkMode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private addCustomEntry(Ljava/lang/String;I)V
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addGlobalEntry(I)V
    .locals 3

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGlobalEntry.  supported5GRadioAccessFamily: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allowed5GNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnabledNetworkMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e41

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    .line 730
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLteEntry(I)V
    .locals 3

    .line 741
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e43

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e42

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNrToLteNetworkType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return p1

    :pswitch_1
    const/16 p0, 0x21

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :pswitch_3
    const/16 p0, 0x1f

    return p0

    :pswitch_4
    const/16 p0, 0x1e

    return p0

    :pswitch_5
    const/16 p0, 0x1d

    return p0

    :pswitch_6
    const/16 p0, 0x1c

    return p0

    :pswitch_7
    const/16 p0, 0x18

    return p0

    :pswitch_8
    const/16 p0, 0x1b

    return p0

    :pswitch_9
    const/16 p0, 0x1a

    return p0

    :pswitch_a
    const/16 p0, 0x19

    return p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkSupportedRadioBitmask(JJ)Z
    .locals 0

    and-long p0, p3, p1

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearAllEntries()V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 787
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getEnabledNetworkType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
    .locals 4

    .line 400
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    .line 401
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 402
    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    iget v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v2, v3}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    .line 406
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lte_service_forced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 405
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 409
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getPreferredNetworkMode()I

    move-result v2

    .line 410
    iget-object v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v1, :cond_0

    .line 412
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto/16 :goto_0

    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 429
    :pswitch_0
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 425
    :pswitch_1
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 418
    :pswitch_2
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 435
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    :cond_2
    const-string v0, "lte_enabled_bool"

    const-string v1, "prefer_2g_bool"

    if-eqz v2, :cond_3

    .line 438
    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 439
    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 440
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 442
    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 443
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v0, :cond_4

    .line 444
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 445
    :cond_4
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 447
    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 448
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 449
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-eqz v0, :cond_7

    .line 450
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 452
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 453
    :cond_8
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    .line 458
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {v1, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 459
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    .line 462
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabledNetworkType: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EnabledNetworkMode"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getEntries()[Ljava/lang/String;
    .locals 1

    .line 782
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getEntryValues()[Ljava/lang/String;
    .locals 1

    .line 791
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    .line 792
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 793
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda1;-><init>()V

    .line 794
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    .line 389
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 388
    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    .line 391
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v1

    const-string v2, "EnabledNetworkMode"

    if-nez v1, :cond_0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network mode :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reduce NR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->reduceNrToLteNetworkType(I)I

    move-result v0

    .line 395
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredNetworkMode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getSelectedEntryValue()I
    .locals 0

    .line 798
    iget p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    return p0
.end method

.method private getSummary()Ljava/lang/String;
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method private is5gEntryDisplayed()Z
    .locals 0

    .line 828
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    return p0
.end method

.method private static synthetic lambda$getEntryValues$1(I)[Ljava/lang/String;
    .locals 0

    .line 794
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$setPreferenceEntries$0(Ljava/util/List;Z[II)V
    .locals 1

    .line 335
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->$SwitchMap$com$android$settings$network$telephony$NetworkModeChoicesProto$UiOptions$PresentFormat:[I

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 382
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not supported ui options format."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 378
    :pswitch_0
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 379
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    goto :goto_0

    .line 374
    :pswitch_1
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 375
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add4gEntry(I)V

    goto :goto_0

    .line 371
    :pswitch_2
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    goto :goto_0

    .line 368
    :pswitch_3
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    goto :goto_0

    .line 365
    :pswitch_4
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add4gEntry(I)V

    goto :goto_0

    .line 359
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 360
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f040e52

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aget p2, p3, p4

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addCustomEntry(Ljava/lang/String;I)V

    goto :goto_0

    .line 353
    :pswitch_6
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 354
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f040e51

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aget p2, p3, p4

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addCustomEntry(Ljava/lang/String;I)V

    goto :goto_0

    .line 350
    :pswitch_7
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addGlobalEntry(I)V

    goto :goto_0

    .line 347
    :pswitch_8
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    goto :goto_0

    :pswitch_9
    if-eqz p2, :cond_0

    .line 343
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add2gEntry(I)V

    goto :goto_0

    :pswitch_a
    if-eqz p2, :cond_0

    .line 338
    aget p1, p3, p4

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add1xEntry(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$setSelectedEntry$2(ILjava/lang/Integer;)Z
    .locals 0

    .line 803
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reduceNrToLteNetworkType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    return p1

    :pswitch_0
    const/16 p0, 0x16

    return p0

    :pswitch_1
    const/16 p0, 0x14

    return p0

    :pswitch_2
    const/16 p0, 0x13

    return p0

    :pswitch_3
    const/16 p0, 0x11

    return p0

    :pswitch_4
    const/16 p0, 0xf

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_6
    const/16 p0, 0xa

    return p0

    :pswitch_7
    const/16 p0, 0x9

    return p0

    :pswitch_8
    const/16 p0, 0x8

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPreferenceValueAndSummary()V
    .locals 1

    .line 697
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getPreferredNetworkMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary(I)V

    return-void
.end method

.method private setSelectedEntry(I)V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda4;-><init>(I)V

    .line 803
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    goto :goto_0

    .line 807
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 809
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    goto :goto_0

    :cond_1
    const-string p0, "EnabledNetworkMode"

    const-string p1, "entriesValue is empty"

    .line 811
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSummary(I)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private setSummary(Ljava/lang/String;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    return-void
.end method

.method private showNrList()Z
    .locals 1

    .line 734
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method setPreferenceEntries()V
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 243
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "prefer_2g_bool"

    .line 245
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 246
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->clearAllEntries()V

    .line 247
    invoke-static {}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->newBuilder()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    .line 248
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEnabledNetworkType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setType(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    .line 249
    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->$SwitchMap$com$android$settings$network$telephony$NetworkModeChoicesProto$EnabledNetworks:[I

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->getType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x7f01008e

    const v4, 0x7f01008b

    packed-switch v2, :pswitch_data_0

    .line 322
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not supported enabled network types."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const v2, 0x7f0100b1

    .line 316
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addGlobalEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 317
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addWorldModeCdmaEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 318
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addWorldModeGsmEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 319
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto/16 :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {v1, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 310
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 311
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 312
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto/16 :goto_0

    .line 302
    :pswitch_2
    invoke-virtual {v1, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAnd4gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 303
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 304
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 305
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_3
    const v2, 0x7f01008c

    .line 296
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 297
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 298
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto/16 :goto_0

    .line 290
    :pswitch_4
    invoke-virtual {v1, v4}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 291
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 292
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto/16 :goto_0

    .line 284
    :pswitch_5
    invoke-virtual {v1, v4}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAnd4gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 285
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 286
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    const v2, 0x7f01008a

    .line 279
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 280
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    const v2, 0x7f01008d

    .line 272
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 273
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 274
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 275
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto :goto_0

    :pswitch_8
    const v2, 0x7f010087

    .line 266
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 267
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addGlobalEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 268
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto :goto_0

    :pswitch_9
    const v2, 0x7f010086

    .line 260
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 261
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add1xEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 262
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    goto :goto_0

    :pswitch_a
    const v2, 0x7f010088

    .line 252
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 253
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 254
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add1xEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 255
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addGlobalEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 256
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->getChoices()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda2;-><init>()V

    .line 327
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    .line 328
    invoke-virtual {v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->getFormatList()Ljava/util/List;

    move-result-object v3

    .line 329
    array-length v4, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    const/4 v1, 0x0

    .line 334
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v4, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3, v0, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;Ljava/util/List;Z[I)V

    invoke-interface {v1, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void

    .line 330
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-virtual {v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->getType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setPreferenceValueAndSummary(I)V
    .locals 11

    .line 473
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const v0, 0x7f040e2c

    const v1, 0x7f040e2b

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f040e43

    const v6, 0x7f040e42

    const/16 v7, 0xa

    const v8, 0x7f040e2d

    const v9, 0x7f040e41

    const v10, 0x7f040e2a

    packed-switch p1, :pswitch_data_0

    .line 622
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 623
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040dc8

    new-array v3, v3, [Ljava/lang/Object;

    .line 624
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    .line 623
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 622
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_0
    const/16 p1, 0x21

    .line 601
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 603
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    const/16 p1, 0x1b

    .line 610
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 612
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eq p1, v4, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 614
    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 615
    :cond_1
    :goto_0
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_2
    const/16 p1, 0x19

    .line 606
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 607
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3
    const/16 p1, 0x1a

    .line 592
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 594
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_4
    const/16 p1, 0x15

    .line 540
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 542
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_5
    const/16 p1, 0x12

    .line 478
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 480
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_6
    const/16 p1, 0xd

    .line 555
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 556
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 564
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x16

    .line 565
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 567
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 570
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 572
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eq p1, v4, :cond_8

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 574
    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    .line 577
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 578
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v5

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 581
    :cond_6
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v6

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 575
    :cond_8
    :goto_4
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 505
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f041004

    .line 506
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 512
    :cond_9
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_d

    const/16 p1, 0x9

    .line 513
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 515
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 516
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v0, v5

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 519
    :cond_b
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    move v1, v6

    :goto_6
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 523
    :cond_d
    invoke-direct {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 525
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 529
    :pswitch_a
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_e

    const p1, 0x7f041003

    .line 530
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :cond_e
    const/16 p1, 0x8

    .line 533
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    move v5, v6

    :goto_7
    invoke-direct {p0, v5}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :pswitch_b
    const/4 p1, 0x5

    .line 551
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const p1, 0x7f040e28

    .line 552
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :pswitch_c
    const/4 p1, 0x4

    .line 547
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 548
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 495
    :pswitch_d
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_10

    .line 496
    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const p1, 0x7f040e29

    .line 497
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 499
    :cond_10
    invoke-direct {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 501
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 485
    :pswitch_e
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_11

    .line 486
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 487
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 489
    :cond_11
    invoke-direct {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 491
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfig()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 221
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    .line 223
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v1

    const-wide/32 v3, 0x80000

    .line 222
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->checkSupportedRadioBitmask(JJ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    .line 226
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 227
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v1

    .line 226
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->checkSupportedRadioBitmask(JJ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    .line 229
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "show_cdma_choices_bool"

    .line 231
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-eqz v0, :cond_1

    const-string/jumbo v1, "show_4g_for_lte_data_icon_bool"

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceEntriesBuilder: subId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Supported5gRadioAccessFamily :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mAllowed5gNetworkType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",IsGlobalCdma :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",Show4gForLTE :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnabledNetworkMode"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
