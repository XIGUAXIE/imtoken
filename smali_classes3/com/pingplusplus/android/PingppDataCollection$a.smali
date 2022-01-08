.class public final Lcom/pingplusplus/android/PingppDataCollection$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/PingppDataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/pingplusplus/android/PingppDataCollection$a;-><init>()V

    return-void
.end method

.method private final a()J
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/PingppDataCollection$a;)J
    .locals 2

    invoke-direct {p0}, Lcom/pingplusplus/android/PingppDataCollection$a;->a()J

    move-result-wide v0

    return-wide v0
.end method
