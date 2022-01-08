.class public Lcom/subgraph/orchid/config/TorConfigInterval;
.super Ljava/lang/Object;
.source "TorConfigInterval.java"


# instance fields
.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final value:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1, p2, p3}, Lcom/subgraph/orchid/config/TorConfigInterval;->getTimeUnitFor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-static {p1, p2, p3}, Lcom/subgraph/orchid/config/TorConfigInterval;->getValueFor(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    return-void
.end method

.method private static createForValueAndUnit(JLjava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;
    .locals 2

    const-string v0, "week"

    .line 18
    invoke-static {p2, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance p2, Lcom/subgraph/orchid/config/TorConfigInterval;

    const-wide/16 v0, 0x7

    mul-long p0, p0, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p2, p0, p1, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object p2

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringToUnit(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    .line 22
    new-instance v0, Lcom/subgraph/orchid/config/TorConfigInterval;

    invoke-direct {v0, p0, p1, p2}, Lcom/subgraph/orchid/config/TorConfigInterval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static createFrom(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;
    .locals 4

    const-string v0, " "

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 9
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 10
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 11
    new-instance p0, Lcom/subgraph/orchid/config/TorConfigInterval;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lcom/subgraph/orchid/config/TorConfigInterval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object p0

    .line 13
    :cond_0
    aget-object p0, p0, v3

    invoke-static {v0, v1, p0}, Lcom/subgraph/orchid/config/TorConfigInterval;->createForValueAndUnit(JLjava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeUnitFor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 65
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p2, p0, :cond_1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    .line 66
    :cond_1
    :goto_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method private static getValueFor(JLjava/util/concurrent/TimeUnit;)J
    .locals 1

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p2, v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-wide p0

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static stringToUnit(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .locals 1

    const-string v0, "day"

    .line 27
    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_0
    const-string v0, "hour"

    .line 29
    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_1
    const-string v0, "minute"

    .line 31
    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_2
    const-string v0, "second"

    .line 33
    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_3
    const-string v0, "millisecond"

    .line 35
    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 36
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    .line 38
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static unitToString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/subgraph/orchid/config/TorConfigInterval$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "days"

    return-object p0

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "hour"

    return-object p0

    :cond_2
    const-string p0, "minute"

    return-object p0

    :cond_3
    const-string p0, "second"

    return-object p0

    :cond_4
    const-string p0, "millisecond"

    return-object p0
.end method


# virtual methods
.method public getMilliseconds()J
    .locals 4

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    iget-object v3, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    const-wide/16 v4, 0x7

    rem-long v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 82
    div-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "1 week"

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " weeks"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    iget-wide v4, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Lcom/subgraph/orchid/config/TorConfigInterval;->unitToString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-wide v4, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    const-string v1, "s"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
