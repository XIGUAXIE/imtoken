.class Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$2;->this$0:Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V
    .locals 2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getId()J

    move-result-wide v0

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `User` WHERE `id` = ?"

    return-object v0
.end method
