.class public Lcom/subgraph/orchid/data/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"


# instance fields
.field private final date:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    return-void
.end method

.method public static createFromDateAndTimeString(Ljava/lang/String;)Lcom/subgraph/orchid/data/Timestamp;
    .locals 3

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 15
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 18
    :try_start_0
    new-instance v1, Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/data/Timestamp;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 21
    :catch_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse timestamp string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 3

    .line 34
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPassed()Z
    .locals 2

    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Lcom/subgraph/orchid/data/Timestamp;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/subgraph/orchid/data/Timestamp;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
