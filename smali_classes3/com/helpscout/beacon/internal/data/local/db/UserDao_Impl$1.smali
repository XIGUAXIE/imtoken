.class Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$1;->this$0:Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V
    .locals 3

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$1;->this$0:Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->access$000(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;->fromAuthorType(Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getInitials()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getInitials()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getPhoto()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getPhoto()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `User` (`id`,`type`,`displayName`,`initials`,`photo`) VALUES (?,?,?,?,?)"

    return-object v0
.end method
