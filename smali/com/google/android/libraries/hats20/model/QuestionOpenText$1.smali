.class final Lcom/google/android/libraries/hats20/model/QuestionOpenText$1;
.super Ljava/lang/Object;
.source "QuestionOpenText.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/model/QuestionOpenText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/libraries/hats20/model/QuestionOpenText;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/libraries/hats20/model/QuestionOpenText;
    .locals 1

    .line 56
    new-instance p0, Lcom/google/android/libraries/hats20/model/QuestionOpenText;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/hats20/model/QuestionOpenText;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/model/QuestionOpenText$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/model/QuestionOpenText$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/libraries/hats20/model/QuestionOpenText;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/libraries/hats20/model/QuestionOpenText;
    .locals 0

    .line 61
    new-array p0, p1, [Lcom/google/android/libraries/hats20/model/QuestionOpenText;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/model/QuestionOpenText$1;->newArray(I)[Lcom/google/android/libraries/hats20/model/QuestionOpenText;

    move-result-object p0

    return-object p0
.end method
