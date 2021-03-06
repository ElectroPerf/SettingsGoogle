.class Lcom/google/android/settings/security/SecurityContentManager;
.super Ljava/lang/Object;
.source "SecurityContentManager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/security/SecurityContentManager$SecurityContentObserver;,
        Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;,
        Lcom/google/android/settings/security/SecurityContentManager$Entry;,
        Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;,
        Lcom/google/android/settings/security/SecurityContentManager$EntrySeverity;,
        Lcom/google/android/settings/security/SecurityContentManager$OverallSeverity;,
        Lcom/google/android/settings/security/SecurityContentManager$ContentProviderMethod;,
        Lcom/google/android/settings/security/SecurityContentManager$IntentAction;
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x3e8

.field public static final EXTRA_IS_SELF_TRIGGERED:Ljava/lang/String; = "isRefresh"

.field static final SECURITY_HUB_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.security.securityhub"

.field private static final UI_DATA_OBSERVER_URI:Landroid/net/Uri;

.field private static final URI:Landroid/net/Uri;

.field static sInstance:Lcom/google/android/settings/security/SecurityContentManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mBiometricOrder:I

.field private mBiometricSecurityLevelWhenEnrolled:Lcom/google/android/settings/security/SecurityLevel;

.field private mBiometricSecurityLevelWhenNotEnrolled:Lcom/google/android/settings/security/SecurityLevel;

.field mContentProviderClient:Landroid/content/ContentProviderClient;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/settings/security/SecurityContentManager$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchUiDataAsyncRequestEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOverallStatus:Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;

.field private mScreenLockOrder:I

.field private mScreenLockSecurityLevelWhenNotSet:Lcom/google/android/settings/security/SecurityLevel;

.field private mScreenLockSecurityLevelWhenSet:Lcom/google/android/settings/security/SecurityLevel;

.field private final mSecurityContentObserver:Lcom/google/android/settings/security/SecurityContentManager$SecurityContentObserver;

.field private mSecurityWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/settings/security/SecurityWarning;",
            ">;"
        }
    .end annotation
.end field

.field private mUiDataEtag:Ljava/lang/String;

.field private final mUiDataSubscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3V1rbLlcvq9ByKLNquswFnGwbhQ(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->lambda$getSecurityWarningsFromUiDataBundle$2(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mhlp4SLDUNtcE_jUwfzYm5gIFcE(Lcom/google/android/settings/security/SecurityContentManager;Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->notifySubscriberIfStarted(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pmr7jTiOYofbDY8iZRSHr_ZBl3c(Ljava/util/Set;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/settings/security/SecurityContentManager;->lambda$getEntriesFromUiDataBundle$1(Ljava/util/Set;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vMW1WS4ssT_JJSpVz259OLwKlwI(Lcom/google/android/settings/security/SecurityContentManager;Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/security/SecurityContentManager;->lambda$fetchUiDataAsync$0(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfetchUiDataAsync(Lcom/google/android/settings/security/SecurityContentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/security/SecurityContentManager;->fetchUiDataAsync()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/settings/security/SecurityContentManager;->sLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.google.android.apps.security.securityhub.settingscontentprovider"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/security/SecurityContentManager;->URI:Landroid/net/Uri;

    .line 55
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 57
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "getUiData"

    .line 59
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/security/SecurityContentManager;->UI_DATA_OBSERVER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mUiDataSubscribers:Ljava/util/Set;

    .line 116
    new-instance v0, Lcom/google/android/settings/security/SecurityContentManager$SecurityContentObserver;

    invoke-direct {v0, p0}, Lcom/google/android/settings/security/SecurityContentManager$SecurityContentObserver;-><init>(Lcom/google/android/settings/security/SecurityContentManager;)V

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mSecurityContentObserver:Lcom/google/android/settings/security/SecurityContentManager$SecurityContentObserver;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mEntries:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mSecurityWarnings:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mFetchUiDataAsyncRequestEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x3e8

    .line 133
    iput v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mBiometricOrder:I

    .line 134
    iput v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mScreenLockOrder:I

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method private callWithPersistentClient(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mContentProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 630
    sget-object v1, Lcom/google/android/settings/security/SecurityContentManager;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mContentProviderClient:Landroid/content/ContentProviderClient;

    .line 634
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "SecurityContentManager"

    const-string v2, "Security Hub client has died"

    .line 636
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    invoke-direct {p0}, Lcom/google/android/settings/security/SecurityContentManager;->closePersistentClient()V

    const/4 v0, 0x1

    if-ge p4, v0, :cond_1

    add-int/2addr p4, v0

    .line 642
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/settings/security/SecurityContentManager;->callWithPersistentClient(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private clickBundleRequiresLargeScreenSupport(Landroid/os/Bundle;)Z
    .locals 1

    const-string p0, "click_type"

    .line 736
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "navigation"

    .line 737
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "click_intent"

    .line 741
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-nez p0, :cond_1

    return v0

    .line 746
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.google.android.gms.settings.FIND_MY_DEVICE_SETTINGS"

    .line 747
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.google.android.gms.settings.ADM_SETTINGS"

    .line 748
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.google.android.apps.security.securityhub.shared.crossprofile.profileselection.PROFILE_SELECTION_ACTIVITY"

    .line 749
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.settings.MODULE_UPDATE_SETTINGS"

    .line 750
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.app.action.SET_NEW_PASSWORD"

    .line 751
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.settings.SYSTEM_UPDATE_SETTINGS"

    .line 752
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private closePersistentClient()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mContentProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 673
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecurityContentManager"

    const-string v2, "Exception closing the Security Hub client"

    .line 675
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mContentProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    return-void
.end method

.method private extrasBundle(Z)Landroid/os/Bundle;
    .locals 1

    .line 682
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isRefresh"

    .line 683
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private fetchUiData(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getUiData"

    .line 325
    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/android/settings/security/SecurityContentManager;->callWithPersistentClient(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "SecurityContentManager"

    const-string v3, "Exception on getUiData call to Security Hub"

    .line 331
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string p1, "etag"

    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 340
    iget-object v2, p0, Lcom/google/android/settings/security/SecurityContentManager;->mUiDataEtag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 343
    :cond_1
    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mUiDataEtag:Ljava/lang/String;

    .line 345
    invoke-direct {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager;->getOverallStatusFromUiDataBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mOverallStatus:Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;

    .line 346
    invoke-direct {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager;->getEntriesFromUiDataBundle(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mEntries:Ljava/util/List;

    .line 347
    invoke-direct {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityWarningsFromUiDataBundle(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mSecurityWarnings:Ljava/util/List;

    const-string p1, "config"

    .line 349
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const-string v1, "biometric_order_value"

    const/16 v2, 0x3e8

    .line 352
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 353
    :goto_1
    iput v1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mBiometricOrder:I

    const-string v1, "screen_lock_order_value"

    .line 356
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_3

    move v2, v1

    .line 357
    :cond_3
    iput v2, p0, Lcom/google/android/settings/security/SecurityContentManager;->mScreenLockOrder:I

    const-string v1, "biometric_severity_level_when_enrolled"

    .line 361
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v1}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityLevelOrNull(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mBiometricSecurityLevelWhenEnrolled:Lcom/google/android/settings/security/SecurityLevel;

    const-string v1, "biometric_severity_level_when_not_enrolled"

    .line 365
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v1}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityLevelOrNull(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mBiometricSecurityLevelWhenNotEnrolled:Lcom/google/android/settings/security/SecurityLevel;

    const-string v1, "screen_lock_severity_level_when_set"

    .line 369
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v1}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityLevelOrNull(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mScreenLockSecurityLevelWhenSet:Lcom/google/android/settings/security/SecurityLevel;

    const-string v1, "screen_lock_severity_level_when_not_set"

    .line 373
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityLevelOrNull(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mScreenLockSecurityLevelWhenNotSet:Lcom/google/android/settings/security/SecurityLevel;

    .line 377
    :cond_4
    iget-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mUiDataSubscribers:Ljava/util/Set;

    new-instance v1, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/security/SecurityContentManager;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return v0
.end method

.method private fetchUiDataAsync()V
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager;->fetchUiDataAsync(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)V

    return-void
.end method

.method private fetchUiDataAsync(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 397
    :goto_0
    iget-object v2, p0, Lcom/google/android/settings/security/SecurityContentManager;->mFetchUiDataAsyncRequestEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/google/android/settings/security/SecurityContentManager;->mFetchUiDataAsyncRequestEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 399
    new-instance v0, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/security/SecurityContentManager;Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method private getEntriesFromUiDataBundle(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/settings/security/SecurityContentManager$Entry;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "settings_entries"

    .line 469
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 471
    new-instance v1, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0}, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/settings/security/SecurityContentManager;
    .locals 2

    .line 246
    sget-object v0, Lcom/google/android/settings/security/SecurityContentManager;->sInstance:Lcom/google/android/settings/security/SecurityContentManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 250
    :cond_0
    sget-object v0, Lcom/google/android/settings/security/SecurityContentManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    sget-object v1, Lcom/google/android/settings/security/SecurityContentManager;->sInstance:Lcom/google/android/settings/security/SecurityContentManager;

    if-nez v1, :cond_1

    .line 253
    new-instance v1, Lcom/google/android/settings/security/SecurityContentManager;

    invoke-direct {v1, p0}, Lcom/google/android/settings/security/SecurityContentManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/settings/security/SecurityContentManager;->sInstance:Lcom/google/android/settings/security/SecurityContentManager;

    .line 255
    :cond_1
    sget-object p0, Lcom/google/android/settings/security/SecurityContentManager;->sInstance:Lcom/google/android/settings/security/SecurityContentManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getLargeScreenClickIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    const-string p0, "click_intent"

    .line 757
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 758
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p0, 0x10000000

    .line 762
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeFlags(I)V

    const p0, 0x8000

    .line 763
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeFlags(I)V

    const/high16 p0, 0x800000

    .line 764
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeFlags(I)V

    return-object p1
.end method

.method private getOverallStatusFromUiDataBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;
    .locals 1

    const-string p0, "overall_status"

    .line 452
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    .line 454
    invoke-static {}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;->builder()Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;

    move-result-object p1

    const-string v0, "title"

    .line 455
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;

    move-result-object p1

    const-string v0, "summary"

    .line 456
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;->setSummary(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;

    move-result-object p1

    const-string v0, "severity_level"

    .line 458
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/settings/security/SecurityContentManager;->getStatusSecurityLevel(Ljava/lang/String;)Lcom/google/android/settings/security/StatusSecurityLevel;

    move-result-object p0

    .line 457
    invoke-virtual {p1, p0}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;->setStatusSecurityLevel(Lcom/google/android/settings/security/StatusSecurityLevel;)Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;

    move-result-object p0

    .line 459
    invoke-virtual {p0}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;->build()Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSecurityLevel(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;
    .locals 2

    if-nez p0, :cond_0

    .line 696
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->SECURITY_LEVEL_UNKNOWN:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 698
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "RECOMMENDATION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "NONE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "INFORMATION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "CRITICAL_WARNING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 708
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->SECURITY_LEVEL_UNKNOWN:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0

    .line 702
    :pswitch_0
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->RECOMMENDATION:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0

    .line 706
    :pswitch_1
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->NONE:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0

    .line 704
    :pswitch_2
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->INFORMATION:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0

    .line 700
    :pswitch_3
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->CRITICAL_WARNING:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5473c524 -> :sswitch_3
        -0xa55f6f4 -> :sswitch_2
        0x24a738 -> :sswitch_1
        0x40b523b9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSecurityLevelOrNull(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 691
    :cond_0
    invoke-static {p0}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityLevel(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object p0

    return-object p0
.end method

.method private static getSecurityWarningFromWarningBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityWarning;
    .locals 3

    .line 508
    invoke-static {}, Lcom/google/android/settings/security/SecurityWarning;->builder()Lcom/google/android/settings/security/SecurityWarning$Builder;

    move-result-object v0

    const-string v1, "title"

    .line 509
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    move-result-object v0

    const-string v1, "subtitle"

    .line 510
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setSubtitle(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    move-result-object v0

    const-string v1, "summary"

    .line 511
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setSummary(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    move-result-object v0

    const-string v1, "severity_level"

    .line 514
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-static {v1}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityLevel(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setSecurityLevel(Lcom/google/android/settings/security/SecurityLevel;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    move-result-object v0

    const-string v1, "primary_button"

    .line 516
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "label"

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {v0, v1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setPrimaryButtonClickBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    .line 520
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setPrimaryButtonText(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    :cond_0
    const-string v1, "secondary_button"

    .line 524
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {v0, v1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setSecondaryButtonClickBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    .line 528
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-virtual {v0, v1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setSecondaryButtonText(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    :cond_1
    const-string v1, "dismiss_button"

    .line 531
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_2

    .line 533
    invoke-virtual {v0, p0}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setDismissButtonClickBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityWarning$Builder;

    const/4 v1, 0x1

    const-string v2, "show_confirmation_dialog"

    .line 535
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 534
    invoke-virtual {v0, p0}, Lcom/google/android/settings/security/SecurityWarning$Builder;->setShowConfirmationDialogOnDismiss(Z)Lcom/google/android/settings/security/SecurityWarning$Builder;

    .line 538
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/settings/security/SecurityWarning$Builder;->build()Lcom/google/android/settings/security/SecurityWarning;

    move-result-object p0

    return-object p0
.end method

.method private getSecurityWarningsFromUiDataBundle(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/settings/security/SecurityWarning;",
            ">;"
        }
    .end annotation

    const-string p0, "warning_cards"

    .line 496
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 498
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 501
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    new-instance v0, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method private static getStatusSecurityLevel(Ljava/lang/String;)Lcom/google/android/settings/security/StatusSecurityLevel;
    .locals 2

    .line 713
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "OVERALL_RECOMMENDATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "OVERALL_INFORMATION_NO_ISSUES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "OVERALL_INFORMATION_REVIEW_ISSUES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "OVERALL_CRITICAL_WARNING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 723
    sget-object p0, Lcom/google/android/settings/security/StatusSecurityLevel;->STATUS_SECURITY_LEVEL_UNKNOWN:Lcom/google/android/settings/security/StatusSecurityLevel;

    return-object p0

    .line 717
    :pswitch_0
    sget-object p0, Lcom/google/android/settings/security/StatusSecurityLevel;->RECOMMENDATION:Lcom/google/android/settings/security/StatusSecurityLevel;

    return-object p0

    .line 721
    :pswitch_1
    sget-object p0, Lcom/google/android/settings/security/StatusSecurityLevel;->INFORMATION_NO_ISSUES:Lcom/google/android/settings/security/StatusSecurityLevel;

    return-object p0

    .line 719
    :pswitch_2
    sget-object p0, Lcom/google/android/settings/security/StatusSecurityLevel;->INFORMATION_REVIEW_ISSUES:Lcom/google/android/settings/security/StatusSecurityLevel;

    return-object p0

    .line 715
    :pswitch_3
    sget-object p0, Lcom/google/android/settings/security/StatusSecurityLevel;->CRITICAL_WARNING:Lcom/google/android/settings/security/StatusSecurityLevel;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f404b52 -> :sswitch_3
        0x2eb20dfc -> :sswitch_2
        0x76e70cf3 -> :sswitch_1
        0x79c0ea0b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSecurityHubOnDevice()Z
    .locals 3

    const/4 v0, 0x0

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.apps.security.securityhub"

    .line 652
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v2, "com.google.android.apps.security.securityhub.settingscontentprovider"

    .line 654
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/google/android/settings/external/SignatureVerifier;->isPackageAllowlisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private isStarted(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)Z
    .locals 0

    .line 434
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p0

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method

.method private isThisLargeScreenDevice(Landroid/content/Context;)Z
    .locals 0

    .line 729
    invoke-static {p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$fetchUiDataAsync$0(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;Z)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mFetchUiDataAsyncRequestEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1

    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->isStarted(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mUiDataSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/google/android/settings/security/SecurityContentManager;->registerContentObserver()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mUiDataSubscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/google/android/settings/security/SecurityContentManager;->fetchUiData()Z

    move-result p2

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/settings/security/SecurityContentManager;->fetchUiDataAfterContentResolverUpdate()Z

    move-result p2

    :goto_0
    if-eqz p1, :cond_3

    .line 418
    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->isStarted(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p2, :cond_3

    .line 421
    invoke-interface {p1}, Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;->onSecurityHubUiDataChange()V

    :cond_3
    return-void
.end method

.method private static synthetic lambda$getEntriesFromUiDataBundle$1(Ljava/util/Set;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "security_source_id"

    .line 472
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-static {}, Lcom/google/android/settings/security/SecurityContentManager$Entry;->builder()Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;

    move-result-object p0

    const-string v1, "title"

    .line 476
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;

    move-result-object p0

    const-string v1, "summary"

    .line 477
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->setSummary(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;

    move-result-object p0

    const/16 v1, 0x3e8

    const-string v2, "order_value"

    .line 478
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->setOrder(I)Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;

    move-result-object p0

    const-string v1, "severity_level"

    .line 481
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-static {v1}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityLevel(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object v1

    .line 479
    invoke-virtual {p0, v1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->setSecurityLevel(Lcom/google/android/settings/security/SecurityLevel;)Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;

    move-result-object p0

    const-string v1, "settings_entry_button"

    .line 483
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 482
    invoke-virtual {p0, p2}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->setOnClickBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;

    move-result-object p0

    .line 484
    invoke-virtual {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->setSecuritySourceId(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;

    move-result-object p0

    .line 485
    invoke-virtual {p0}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->build()Lcom/google/android/settings/security/SecurityContentManager$Entry;

    move-result-object p0

    .line 475
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SecurityContentManager"

    const-string p1, "Two entries with the same securitySourceId were found."

    .line 487
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$getSecurityWarningsFromUiDataBundle$2(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 503
    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityWarningFromWarningBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityWarning;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifySubscriberIfStarted(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->isStarted(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 429
    invoke-interface {p1}, Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;->onSecurityHubUiDataChange()V

    :cond_0
    return-void
.end method

.method private registerContentObserver()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/settings/security/SecurityContentManager;->UI_DATA_OBSERVER_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mSecurityContentObserver:Lcom/google/android/settings/security/SecurityContentManager$SecurityContentObserver;

    const/4 v2, 0x0

    .line 439
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterContentObserver()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mApplicationContext:Landroid/content/Context;

    .line 447
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mSecurityContentObserver:Lcom/google/android/settings/security/SecurityContentManager$SecurityContentObserver;

    .line 448
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method fetchUiData()Z
    .locals 1

    const/4 v0, 0x1

    .line 313
    invoke-direct {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager;->extrasBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager;->fetchUiData(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method fetchUiDataAfterContentResolverUpdate()Z
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-direct {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager;->extrasBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/settings/security/SecurityContentManager;->fetchUiData(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public getBiometricOrder()I
    .locals 0

    .line 589
    iget p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mBiometricOrder:I

    return p0
.end method

.method public getBiometricSecurityLevel(Z)Lcom/google/android/settings/security/SecurityLevel;
    .locals 0

    if-eqz p1, :cond_1

    .line 568
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mBiometricSecurityLevelWhenEnrolled:Lcom/google/android/settings/security/SecurityLevel;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->INFORMATION:Lcom/google/android/settings/security/SecurityLevel;

    :goto_0
    return-object p0

    .line 572
    :cond_1
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mBiometricSecurityLevelWhenNotEnrolled:Lcom/google/android/settings/security/SecurityLevel;

    if-eqz p0, :cond_2

    goto :goto_1

    .line 574
    :cond_2
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->NONE:Lcom/google/android/settings/security/SecurityLevel;

    :goto_1
    return-object p0
.end method

.method public getEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/settings/security/SecurityContentManager$Entry;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method public getOverallStatus()Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mOverallStatus:Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;

    return-object p0
.end method

.method public getPrimarySecurityWarning()Lcom/google/android/settings/security/SecurityWarning;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mSecurityWarnings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mSecurityWarnings:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/settings/security/SecurityWarning;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenLockOrder()I
    .locals 0

    .line 593
    iget p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mScreenLockOrder:I

    return p0
.end method

.method public getScreenLockSecurityLevel(Z)Lcom/google/android/settings/security/SecurityLevel;
    .locals 0

    if-eqz p1, :cond_1

    .line 579
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mScreenLockSecurityLevelWhenSet:Lcom/google/android/settings/security/SecurityLevel;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->INFORMATION:Lcom/google/android/settings/security/SecurityLevel;

    :goto_0
    return-object p0

    .line 583
    :cond_1
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mScreenLockSecurityLevelWhenNotSet:Lcom/google/android/settings/security/SecurityLevel;

    if-eqz p0, :cond_2

    goto :goto_1

    .line 585
    :cond_2
    sget-object p0, Lcom/google/android/settings/security/SecurityLevel;->CRITICAL_WARNING:Lcom/google/android/settings/security/SecurityLevel;

    :goto_1
    return-object p0
.end method

.method public getSecurityHubIsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/settings/security/SecurityContentManager;->isSecurityHubOnDevice()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "isEnabled"

    const/4 v2, 0x0

    .line 291
    invoke-direct {p0, v1, v2, v2, v0}, Lcom/google/android/settings/security/SecurityContentManager;->callWithPersistentClient(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, "is_enabled"

    .line 296
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "SecurityContentManager"

    const-string v2, "Exception on isEnabled call to Security Hub"

    .line 298
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public getSecurityWarningCount()I
    .locals 0

    .line 563
    invoke-virtual {p0}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityWarnings()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSecurityWarnings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/settings/security/SecurityWarning;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mSecurityWarnings:Ljava/util/List;

    return-object p0
.end method

.method public handleClick(Landroid/os/Bundle;Landroid/app/Activity;)Z
    .locals 4

    .line 597
    invoke-direct {p0, p2}, Lcom/google/android/settings/security/SecurityContentManager;->isThisLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SecurityContentManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->clickBundleRequiresLargeScreenSupport(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->getLargeScreenClickIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    .line 603
    :try_start_0
    invoke-virtual {p2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "Unable to start activity on a large screen device"

    .line 606
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_0
    :try_start_1
    const-string p2, "handleClick"

    const/4 v0, 0x0

    .line 611
    invoke-direct {p0, p2, v0, p1, v3}, Lcom/google/android/settings/security/SecurityContentManager;->callWithPersistentClient(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception p0

    const-string p1, "Exception on handleClick call to Security Hub"

    .line 615
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 266
    instance-of v0, p1, Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;

    if-eqz v0, :cond_0

    .line 267
    check-cast p1, Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;

    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->fetchUiDataAsync(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)V

    :cond_0
    return-void
.end method

.method onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 276
    instance-of v0, p1, Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager;->mUiDataSubscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager;->mUiDataSubscribers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/google/android/settings/security/SecurityContentManager;->closePersistentClient()V

    .line 280
    invoke-direct {p0}, Lcom/google/android/settings/security/SecurityContentManager;->unregisterContentObserver()V

    :cond_0
    return-void
.end method

.method public subscribe(Lcom/google/android/settings/security/SecurityContentManager$UiDataSubscriber;)Lcom/google/android/settings/security/SecurityContentManager;
    .locals 0

    .line 260
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object p0
.end method
