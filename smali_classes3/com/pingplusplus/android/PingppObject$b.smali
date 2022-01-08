.class final Lcom/pingplusplus/android/PingppObject$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/PingppObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/pingplusplus/android/PingppObject;

.field public static final b:Lcom/pingplusplus/android/PingppObject$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pingplusplus/android/PingppObject$b;

    invoke-direct {v0}, Lcom/pingplusplus/android/PingppObject$b;-><init>()V

    sput-object v0, Lcom/pingplusplus/android/PingppObject$b;->b:Lcom/pingplusplus/android/PingppObject$b;

    new-instance v0, Lcom/pingplusplus/android/PingppObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/PingppObject;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pingplusplus/android/PingppObject$b;->a:Lcom/pingplusplus/android/PingppObject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/pingplusplus/android/PingppObject;
    .locals 1

    sget-object v0, Lcom/pingplusplus/android/PingppObject$b;->a:Lcom/pingplusplus/android/PingppObject;

    return-object v0
.end method
