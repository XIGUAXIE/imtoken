.class final Lcom/pingplusplus/android/i$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/pingplusplus/android/i;

.field public static final b:Lcom/pingplusplus/android/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pingplusplus/android/i$c;

    invoke-direct {v0}, Lcom/pingplusplus/android/i$c;-><init>()V

    sput-object v0, Lcom/pingplusplus/android/i$c;->b:Lcom/pingplusplus/android/i$c;

    new-instance v0, Lcom/pingplusplus/android/i;

    invoke-static {}, Lcom/pingplusplus/android/i;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pingplusplus/android/i$c;->a:Lcom/pingplusplus/android/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/pingplusplus/android/i;
    .locals 1

    sget-object v0, Lcom/pingplusplus/android/i$c;->a:Lcom/pingplusplus/android/i;

    return-object v0
.end method
