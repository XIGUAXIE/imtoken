.class public final Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u00020\u00078\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\tR\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006R\u0019\u0010\u000e\u001a\u00020\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0012\u001a\u00020\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000f\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;",
        "",
        "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        "SYSTEM_AUTHOR",
        "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        "getSYSTEM_AUTHOR$beacon_release",
        "()Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        "",
        "SYSTEM_USER_ID",
        "J",
        "PLACEHOLDER_CUSTOMER_USER_ID",
        "PLACEHOLDER_CUSTOMER_DB",
        "getPLACEHOLDER_CUSTOMER_DB",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "PLACEHOLDER_CUSTOMER_API",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "getPLACEHOLDER_CUSTOMER_API",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "SYSTEM_AUTHOR_API",
        "getSYSTEM_AUTHOR_API",
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
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;

.field private static final PLACEHOLDER_CUSTOMER_API:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

.field private static final PLACEHOLDER_CUSTOMER_DB:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

.field public static final PLACEHOLDER_CUSTOMER_USER_ID:J = 0x7fffffffffffffffL

.field private static final SYSTEM_AUTHOR:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

.field private static final SYSTEM_AUTHOR_API:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

.field public static final SYSTEM_USER_ID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    sget-object v4, Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;->system:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    const-wide/16 v2, 0x1

    const-string v5, ""

    const-string v6, "HB"

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;-><init>(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->SYSTEM_AUTHOR:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v12

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getInitials()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->SYSTEM_AUTHOR_API:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    sget-object v5, Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;->customer:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    const-wide v3, 0x7fffffffffffffffL

    const-string v6, ""

    const-string v7, "PH"

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;-><init>(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->PLACEHOLDER_CUSTOMER_DB:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v13

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getInitials()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->PLACEHOLDER_CUSTOMER_API:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPLACEHOLDER_CUSTOMER_API()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->PLACEHOLDER_CUSTOMER_API:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-object v0
.end method

.method public final getPLACEHOLDER_CUSTOMER_DB()Lcom/helpscout/beacon/internal/data/local/db/UserDB;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->PLACEHOLDER_CUSTOMER_DB:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    return-object v0
.end method

.method public final getSYSTEM_AUTHOR$beacon_release()Lcom/helpscout/beacon/internal/data/local/db/UserDB;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->SYSTEM_AUTHOR:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    return-object v0
.end method

.method public final getSYSTEM_AUTHOR_API()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->SYSTEM_AUTHOR_API:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-object v0
.end method
