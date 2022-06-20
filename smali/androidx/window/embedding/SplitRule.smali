.class public Landroidx/window/embedding/SplitRule;
.super Landroidx/window/embedding/EmbeddingRule;
.source "SplitRule.kt"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/SplitRule$LayoutDir;,
        Landroidx/window/embedding/SplitRule$Companion;,
        Landroidx/window/embedding/SplitRule$SplitFinishBehavior;,
        Landroidx/window/embedding/SplitRule$Api30Impl;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/window/embedding/SplitRule$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FINISH_ADJACENT:I = 0x2

.field public static final FINISH_ALWAYS:I = 0x1

.field public static final FINISH_NEVER:I


# instance fields
.field private final layoutDirection:I

.field private final minSmallestWidth:I

.field private final minWidth:I

.field private final splitRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/SplitRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/SplitRule;->Companion:Landroidx/window/embedding/SplitRule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/window/embedding/SplitRule;-><init>(IIFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIFI)V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingRule;-><init>()V

    .line 45
    iput p1, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    .line 54
    iput p2, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    .line 60
    iput p3, p0, Landroidx/window/embedding/SplitRule;->splitRatio:F

    .line 65
    iput p4, p0, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    return-void
.end method

.method public synthetic constructor <init>(IIFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/high16 p3, 0x3f000000    # 0.5f

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x3

    .line 38
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/embedding/SplitRule;-><init>(IIFI)V

    return-void
.end method


# virtual methods
.method public final checkParentMetrics(Landroid/view/WindowMetrics;)Z
    .locals 4
    .param p1    # Landroid/view/WindowMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parentMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Landroidx/window/embedding/SplitRule$Api30Impl;->INSTANCE:Landroidx/window/embedding/SplitRule$Api30Impl;

    invoke-virtual {v0, p1}, Landroidx/window/embedding/SplitRule$Api30Impl;->getBounds(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p1

    .line 123
    iget v0, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v3, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 125
    :goto_1
    iget v3, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    if-eqz v3, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p0, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    if-lt p1, p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v2

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 141
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 143
    :cond_1
    iget v1, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    check-cast p1, Landroidx/window/embedding/SplitRule;

    iget v3, p1, Landroidx/window/embedding/SplitRule;->minWidth:I

    if-eq v1, v3, :cond_2

    return v2

    .line 144
    :cond_2
    iget v1, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    iget v3, p1, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    if-eq v1, v3, :cond_3

    return v2

    .line 145
    :cond_3
    iget v1, p0, Landroidx/window/embedding/SplitRule;->splitRatio:F

    iget v3, p1, Landroidx/window/embedding/SplitRule;->splitRatio:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    if-nez v1, :cond_5

    return v2

    .line 146
    :cond_5
    iget p0, p0, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    iget p1, p1, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getLayoutDirection()I
    .locals 0

    .line 66
    iget p0, p0, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    return p0
.end method

.method public final getMinSmallestWidth()I
    .locals 0

    .line 54
    iget p0, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    return p0
.end method

.method public final getMinWidth()I
    .locals 0

    .line 45
    iget p0, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    return p0
.end method

.method public final getSplitRatio()F
    .locals 0

    .line 60
    iget p0, p0, Landroidx/window/embedding/SplitRule;->splitRatio:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 152
    iget v0, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    mul-int/lit8 v0, v0, 0x1f

    .line 153
    iget v1, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 154
    iget v1, p0, Landroidx/window/embedding/SplitRule;->splitRatio:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 155
    iget p0, p0, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    add-int/2addr v0, p0

    return v0
.end method
