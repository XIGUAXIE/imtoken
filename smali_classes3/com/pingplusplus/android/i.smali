.class public final Lcom/pingplusplus/android/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/i$c;,
        Lcom/pingplusplus/android/i$b;,
        Lcom/pingplusplus/android/i$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u0001:\u0003\u0013\u0014\u0015B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J4\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0018\u0010\r\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u000eJB\u0010\u000f\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0018\u0010\r\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\n2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/pingplusplus/android/PingppUtil;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "deviceIds2",
        "",
        "getDeviceIds2",
        "()Ljava/lang/String;",
        "httpGet",
        "",
        "urlString",
        "data",
        "headers",
        "",
        "httpPost",
        "callback",
        "Lcom/pingplusplus/android/PingppHttpCallback;",
        "initDeviceIds2",
        "Companion",
        "HttpRequestParams",
        "PingppUtilHolder",
        "pingpp-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field public static final b:Lcom/pingplusplus/android/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pingplusplus/android/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pingplusplus/android/i;->b:Lcom/pingplusplus/android/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/i;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/pingplusplus/android/i;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/pingplusplus/android/d;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pingplusplus/android/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/pingplusplus/android/d;)V

    return-void
.end method

.method public static final synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/pingplusplus/android/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic b(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/pingplusplus/android/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "00_NULL"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/pingplusplus/android/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pingplusplus/android/d;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/pingplusplus/android/i$a$a;

    invoke-direct {v0}, Lcom/pingplusplus/android/i$a$a;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/pingplusplus/android/i$b;

    new-instance v9, Lcom/pingplusplus/android/i$b;

    const-string v6, "POST"

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/pingplusplus/android/i$b;-><init>(Lcom/pingplusplus/android/i;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/pingplusplus/android/d;)V

    const/4 p1, 0x0

    aput-object v9, v1, p1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
