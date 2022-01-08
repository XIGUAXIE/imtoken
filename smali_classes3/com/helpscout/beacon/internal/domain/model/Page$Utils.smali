.class public final Lcom/helpscout/beacon/internal/domain/model/Page$Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/domain/model/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Utils"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00082\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\tJ!\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00082\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/Page$Utils;",
        "",
        "",
        "totalPages",
        "currentPage",
        "",
        "hasMorePages",
        "(JLjava/lang/Long;)Z",
        "",
        "(ILjava/lang/Long;)Z",
        "(ILjava/lang/Integer;)Z",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/domain/model/Page$Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;->INSTANCE:Lcom/helpscout/beacon/internal/domain/model/Page$Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic hasMorePages$default(Lcom/helpscout/beacon/internal/domain/model/Page$Utils;ILjava/lang/Integer;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;->hasMorePages(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic hasMorePages$default(Lcom/helpscout/beacon/internal/domain/model/Page$Utils;ILjava/lang/Long;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;->hasMorePages(ILjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic hasMorePages$default(Lcom/helpscout/beacon/internal/domain/model/Page$Utils;JLjava/lang/Long;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;->hasMorePages(JLjava/lang/Long;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final hasMorePages(ILjava/lang/Integer;)Z
    .locals 2

    int-to-long v0, p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;->hasMorePages(JLjava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public final hasMorePages(ILjava/lang/Long;)Z
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;->hasMorePages(JLjava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public final hasMorePages(JLjava/lang/Long;)Z
    .locals 2

    if-nez p3, :cond_0

    const-wide/16 v0, 0x1

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
