.class Lcom/android/settings/development/tare/TareFactorController$TareFactorData;
.super Ljava/lang/Object;
.source "TareFactorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/tare/TareFactorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TareFactorData"
.end annotation


# instance fields
.field public currentValue:J

.field public final defaultValue:J

.field public final factorPolicy:I

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->title:Ljava/lang/String;

    .line 637
    iput-wide p2, p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->defaultValue:J

    .line 638
    iput p4, p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->factorPolicy:I

    .line 639
    iput-wide p2, p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->currentValue:J

    return-void
.end method
