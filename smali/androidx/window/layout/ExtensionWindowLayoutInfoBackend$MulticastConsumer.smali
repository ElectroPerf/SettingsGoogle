.class final Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;
.super Ljava/lang/Object;
.source "ExtensionWindowLayoutInfoBackend.kt"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MulticastConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/window/extensions/layout/WindowLayoutInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionWindowLayoutInfoBackend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionWindowLayoutInfoBackend.kt\nandroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1849#2,2:141\n1#3:143\n*S KotlinDebug\n*F\n+ 1 ExtensionWindowLayoutInfoBackend.kt\nandroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer\n*L\n119#1:141,2\n*E\n"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final registeredListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->activity:Landroid/app/Activity;

    .line 110
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 3
    .param p1    # Landroidx/window/extensions/layout/WindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 118
    :try_start_0
    sget-object v1, Landroidx/window/layout/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/ExtensionsWindowLayoutInfoAdapter;

    iget-object v2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Landroidx/window/layout/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroid/app/Activity;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    .line 119
    iget-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 119
    iget-object v2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    invoke-interface {v1, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public final addListener(Landroidx/core/util/Consumer;)V
    .locals 2
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 125
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 126
    :cond_0
    iget-object p0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 137
    iget-object p0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final removeListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 132
    :try_start_0
    iget-object p0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
