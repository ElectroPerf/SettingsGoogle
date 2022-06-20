.class public Lcom/android/settings/notification/app/RecentConversationsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RecentConversationsPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mConversationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mPs:Landroid/app/people/IPeopleManager;


# direct methods
.method public static synthetic $r8$lambda$10BOmApnh7syjQPE2IAf36B0vH0(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/lang/String;ILjava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->lambda$createConversationPref$1(Ljava/lang/String;ILjava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1d1gqy0it1L6wds3Nh_W5IPl3no(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Landroidx/preference/PreferenceGroup;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->lambda$getClearAll$0(Landroidx/preference/PreferenceGroup;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pb6Iro_k6eA_4c8B5RBoYcvULZs(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/lang/String;ILandroid/app/people/ConversationChannel;Ljava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->lambda$createConversationPref$2(Ljava/lang/String;ILandroid/app/people/ConversationChannel;Ljava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/people/IPeopleManager;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 231
    new-instance p1, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    .line 61
    iput-object p2, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 62
    iput-object p3, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    return-void
.end method

.method private synthetic lambda$createConversationPref$1(Ljava/lang/String;ILjava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/PreferenceGroup;)V
    .locals 1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Landroid/app/people/IPeopleManager;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    invoke-virtual {p4}, Lcom/android/settings/notification/app/RecentConversationPreference;->getClearView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f0410b4

    .line 171
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p5, p4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentConversationsPC"

    const-string p2, "Could not clear recent"

    .line 174
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$createConversationPref$2(Ljava/lang/String;ILandroid/app/people/ConversationChannel;Ljava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/Preference;)Z
    .locals 1

    .line 187
    iget-object p6, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 189
    invoke-virtual {p3}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    .line 187
    invoke-virtual {p6, p1, p2, v0, p4}, Lcom/android/settings/notification/NotificationBackend;->createConversationNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->getSubSettingLauncher(Landroid/app/people/ConversationChannel;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$getClearAll$0(Landroidx/preference/PreferenceGroup;Landroid/widget/Button;Landroid/view/View;)V
    .locals 2

    .line 82
    :try_start_0
    iget-object p3, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    invoke-interface {p3}, Landroid/app/people/IPeopleManager;->removeAllRecentConversations()V

    .line 87
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_1

    .line 88
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lcom/android/settings/notification/app/RecentConversationPreference;

    if-eqz v1, :cond_0

    .line 90
    move-object v1, v0

    check-cast v1, Lcom/android/settings/notification/app/RecentConversationPreference;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/RecentConversationPreference;->hasClearListener()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f0410b5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "RecentConversationsPC"

    const-string p2, "Could not clear recents"

    .line 97
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method protected createConversationPref(Landroidx/preference/PreferenceGroup;Landroid/app/people/ConversationChannel;I)Lcom/android/settings/notification/app/RecentConversationPreference;
    .locals 12

    .line 161
    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getUid()I

    move-result v8

    .line 163
    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 164
    new-instance v10, Lcom/android/settings/notification/app/RecentConversationPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/android/settings/notification/app/RecentConversationPreference;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v11, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$$ExternalSyntheticLambda0;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/lang/String;ILjava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v10, v11}, Lcom/android/settings/notification/app/RecentConversationPreference;->setOnClearClickListener(Lcom/android/settings/notification/app/RecentConversationPreference$OnClearClickListener;)V

    .line 178
    :cond_0
    invoke-virtual {v10, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->getTitle(Landroid/app/people/ConversationChannel;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->getSummary(Landroid/app/people/ConversationChannel;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 186
    new-instance p1, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$$ExternalSyntheticLambda1;

    move-object v1, p1

    move-object v2, p0

    move-object v3, v0

    move v4, v8

    move-object v5, p2

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/lang/String;ILandroid/app/people/ConversationChannel;Ljava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;)V

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v10
.end method

.method getClearAll(Landroidx/preference/PreferenceGroup;)Lcom/android/settingslib/widget/LayoutPreference;
    .locals 3

    .line 76
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f0600ac

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const v1, 0x7f0d019b

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 80
    new-instance v2, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Landroidx/preference/PreferenceGroup;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "recent_conversations"

    return-object p0
.end method

.method getSubSettingLauncher(Landroid/app/people/ConversationChannel;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 3

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getUid()I

    move-result v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    .line 215
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    .line 217
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CONVERSATION_ID"

    .line 219
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 223
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 226
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 227
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x72a

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    return-object p0
.end method

.method getSummary(Landroid/app/people/ConversationChannel;)Ljava/lang/CharSequence;
    .locals 4

    .line 199
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f040ef0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 203
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v2

    .line 201
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getTitle(Landroid/app/people/ConversationChannel;)Ljava/lang/CharSequence;
    .locals 0

    .line 207
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected populateConversations(Ljava/util/List;Landroidx/preference/PreferenceGroup;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")Z"
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v0, 0x64

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/ConversationChannel;

    .line 144
    invoke-virtual {v2}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v2}, Landroid/app/people/ConversationChannel;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v2}, Landroid/app/people/ConversationChannel;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 150
    invoke-virtual {p0, p2, v2, v0}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->createConversationPref(Landroidx/preference/PreferenceGroup;Landroid/app/people/ConversationChannel;I)Lcom/android/settings/notification/app/RecentConversationPreference;

    move-result-object v0

    .line 151
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 152
    invoke-virtual {v0}, Lcom/android/settings/notification/app/RecentConversationPreference;->hasClearListener()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected populateList(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->populateConversations(Ljava/util/List;Landroidx/preference/PreferenceGroup;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 126
    :goto_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 129
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->getClearAll(Landroidx/preference/PreferenceGroup;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 133
    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 105
    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    invoke-interface {v0}, Landroid/app/people/IPeopleManager;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversations:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecentConversationsPC"

    const-string v2, "Could get recents"

    .line 110
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversations:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversations:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->populateList(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    return-void
.end method
