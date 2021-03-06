.class public Lcom/google/android/libraries/hats20/HatsClient;
.super Ljava/lang/Object;
.source "HatsClient.java"


# static fields
.field private static final isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/libraries/hats20/HatsClient;->isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static downloadSurvey(Lcom/google/android/libraries/hats20/HatsDownloadRequest;)V
    .locals 4

    const-string v0, "-1"

    .line 94
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getSiteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "HatsLibClient"

    const-string v0, "No Site ID set, ignoring download request."

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/google/android/libraries/hats20/HatsClient;->isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    monitor-exit v0

    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getSiteId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->removeSurveyIfExpired(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getSiteId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->surveyExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    monitor-exit v0

    return-void

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/hats20/HatsClient;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "HatsLibClient"

    const-string v1, "Application does not have internet permission. Cannot make network request."

    .line 111
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    monitor-exit v0

    return-void

    .line 114
    :cond_3
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v2

    if-nez v2, :cond_4

    const-string p0, "HatsLibClient"

    const-string v1, "Invalid configuration: Application does not have a cookie jar installed."

    .line 115
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v0

    return-void

    .line 119
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->restoreCookiesFromPersistence()V

    .line 121
    new-instance v2, Lcom/google/android/libraries/hats20/network/GcsRequest;

    new-instance v3, Lcom/google/android/libraries/hats20/HatsClient$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/libraries/hats20/HatsClient$1;-><init>(Lcom/google/android/libraries/hats20/HatsDownloadRequest;Lcom/google/android/libraries/hats20/storage/HatsDataStore;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->computeDownloadUri()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v2, v3, p0, v1}, Lcom/google/android/libraries/hats20/network/GcsRequest;-><init>(Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;Landroid/net/Uri;Lcom/google/android/libraries/hats20/storage/HatsDataStore;)V

    .line 149
    invoke-static {}, Lcom/google/android/libraries/hats20/NetworkExecutor;->getNetworkExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Lcom/google/android/libraries/hats20/HatsClient$2;

    invoke-direct {v1, v2}, Lcom/google/android/libraries/hats20/HatsClient$2;-><init>(Lcom/google/android/libraries/hats20/network/GcsRequest;)V

    .line 150
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static forTestingClearAllData(Landroid/content/Context;)V
    .locals 0

    .line 368
    invoke-static {p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->forTestingClearAllData()V

    return-void
.end method

.method public static forTestingInjectSurveyIntoStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6

    .line 357
    invoke-static {p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->forTestingInjectSurveyIntoStorage(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static getSurveyExpirationDate(Ljava/lang/String;Landroid/content/Context;)J
    .locals 1

    .line 170
    invoke-static {p1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->removeSurveyIfExpired(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, p0, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getSurveyExpirationDate(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static hasInternetPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.INTERNET"

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static installCookieHandlerIfNeeded()V
    .locals 2

    .line 70
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    const-string v1, "HatsLibClient"

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    const-string v0, "Installed cookie handler."

    .line 72
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Attempted to install cookie handler but one was already installed; skipping the install."

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static markSurveyFinished()V
    .locals 3

    .line 310
    sget-object v0, Lcom/google/android/libraries/hats20/HatsClient;->isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 311
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HatsLibClient"

    const-string v2, "Notified that survey was destroyed when it wasn\'t marked as running."

    .line 312
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static markSurveyRunning()V
    .locals 2

    .line 332
    sget-object v0, Lcom/google/android/libraries/hats20/HatsClient;->isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    const/4 v1, 0x1

    .line 333
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static sendBroadcast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "HatsLibClient"

    const/4 v1, 0x3

    .line 320
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Hats survey is downloaded. Sending broadcast with action ACTION_BROADCAST_SURVEY_DOWNLOADED"

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.libraries.hats20.SURVEY_DOWNLOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "SiteId"

    .line 325
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ResponseCode"

    .line 326
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static showSurveyIfAvailable(Lcom/google/android/libraries/hats20/HatsShowRequest;)Z
    .locals 12

    const-string v0, "-1"

    .line 194
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getSiteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "HatsLibClient"

    const-string v0, "No Site ID set, ignoring show request."

    .line 195
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 198
    :cond_0
    sget-object v0, Lcom/google/android/libraries/hats20/HatsClient;->isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "HatsLibClient"

    const-string v2, "Attempted to show a survey while another one was already running, bailing out."

    .line 200
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v0

    return v1

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getClientActivity()Landroid/app/Activity;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v2, :cond_b

    .line 210
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getSiteId()Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getRequestCode()Ljava/lang/Integer;

    move-result-object v8

    .line 218
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getClientActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object v3

    .line 219
    invoke-virtual {v3, v5}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->removeSurveyIfExpired(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v3, v5}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->validSurveyExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    monitor-exit v0

    return v1

    .line 225
    :cond_3
    invoke-virtual {v3, v5}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getSurveyJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    if-eqz v4, :cond_a

    .line 228
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 235
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/libraries/hats20/model/SurveyController;->initWithSurveyFromJson(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/libraries/hats20/model/SurveyController;

    move-result-object v6
    :try_end_1
    .catch Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    invoke-static {}, Lcom/google/android/libraries/hats20/HatsClient;->markSurveyRunning()V

    .line 246
    invoke-virtual {v3, v5}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->removeSurvey(Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    invoke-direct {v1}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;-><init>()V

    .line 249
    invoke-virtual {v6}, Lcom/google/android/libraries/hats20/model/SurveyController;->getPromptParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->setPromptParams(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    move-result-object v7

    .line 252
    invoke-virtual {v6}, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    .line 253
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->shouldDisplayPrompt()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 264
    :cond_5
    instance-of v1, v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_7

    .line 265
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 266
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "com.google.android.libraries.hats20.PromptDialogFragment"

    .line 267
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_6

    .line 273
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getMaxPromptWidth()Ljava/lang/Integer;

    move-result-object v9

    .line 274
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->isBottomSheet()Z

    move-result v10

    .line 268
    invoke-static/range {v5 .. v10}, Lcom/google/android/libraries/hats20/PromptDialogFragment;->newInstance(Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/google/android/libraries/hats20/PromptDialogFragment;

    move-result-object v2

    .line 277
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getParentResId()I

    move-result p0

    const-string v3, "com.google.android.libraries.hats20.PromptDialogFragment"

    invoke-virtual {v1, p0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_6
    const-string p0, "HatsLibClient"

    const-string v1, "PromptDialog was already open, bailing out."

    .line 281
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_7
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "com.google.android.libraries.hats20.PromptDialogFragment"

    .line 285
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_8

    .line 291
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getMaxPromptWidth()Ljava/lang/Integer;

    move-result-object v9

    .line 292
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->isBottomSheet()Z

    move-result v10

    .line 286
    invoke-static/range {v5 .. v10}, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;->newInstance(Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;

    move-result-object v2

    .line 295
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->getParentResId()I

    move-result p0

    const-string v3, "com.google.android.libraries.hats20.PromptDialogFragment"

    invoke-virtual {v1, p0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_8
    const-string p0, "HatsLibClient"

    const-string v1, "PromptDialog was already open, bailing out."

    .line 299
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    monitor-exit v0

    return v11

    .line 260
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest;->isBottomSheet()Z

    move-result p0

    move-object v1, v2

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, p0

    .line 254
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->startSurveyActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Z)V

    .line 261
    monitor-exit v0

    return v11

    :catch_0
    move-exception p0

    const-string v2, "HatsLibClient"

    .line 240
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to parse JSON for survey with site ID "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    monitor-exit v0

    return v1

    :catch_1
    move-exception p0

    const-string v2, "HatsLibClient"

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    monitor-exit v0

    return v1

    :cond_a
    :goto_2
    const-string p0, "HatsLibClient"

    const-string v2, "Attempted to start survey with site ID %s, but the json in the shared preferences was not found or was empty."

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 229
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    monitor-exit v0

    return v1

    :cond_b
    :goto_3
    const-string p0, "HatsLibClient"

    const-string v2, "Cancelling show request, activity was null, destroyed or finishing."

    .line 211
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 303
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
