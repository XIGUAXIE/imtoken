.class public final Lcom/pingplusplus/android/PingppObject$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/PingppObject;
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

    invoke-direct {p0}, Lcom/pingplusplus/android/PingppObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/pingplusplus/android/PingppObject;
    .locals 1

    sget-object v0, Lcom/pingplusplus/android/PingppObject$b;->b:Lcom/pingplusplus/android/PingppObject$b;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject$b;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    return-object v0
.end method
