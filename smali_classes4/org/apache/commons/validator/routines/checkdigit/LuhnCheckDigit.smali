.class public final Lorg/apache/commons/validator/routines/checkdigit/LuhnCheckDigit;
.super Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.source "LuhnCheckDigit.java"


# static fields
.field public static final LUHN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private static final POSITION_WEIGHT:[I

.field private static final serialVersionUID:J = -0x295012e19f628f5fL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/LuhnCheckDigit;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/checkdigit/LuhnCheckDigit;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/LuhnCheckDigit;->LUHN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/LuhnCheckDigit;->POSITION_WEIGHT:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 54
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected weightedValue(III)I
    .locals 0

    .line 72
    sget-object p2, Lorg/apache/commons/validator/routines/checkdigit/LuhnCheckDigit;->POSITION_WEIGHT:[I

    rem-int/lit8 p3, p3, 0x2

    aget p2, p2, p3

    mul-int p1, p1, p2

    const/16 p2, 0x9

    if-le p1, p2, :cond_0

    add-int/lit8 p1, p1, -0x9

    :cond_0
    return p1
.end method
