.class Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl$2;->this$0:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)V
    .locals 2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getEventId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getMime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getMime()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getHtml()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getHtml()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_7
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `UnfurledMedia` (`event_id`,`url`,`type`,`title`,`description`,`thumbnailUrl`,`mime`,`html`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
