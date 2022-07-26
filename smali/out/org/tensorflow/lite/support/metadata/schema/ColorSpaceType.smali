.class public final Lorg/tensorflow/lite/support/metadata/schema/ColorSpaceType;
.super Ljava/lang/Object;
.source "ColorSpaceType.java"


# static fields
.field public static final GRAYSCALE:B = 0x2t

.field public static final RGB:B = 0x1t

.field public static final UNKNOWN:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    const-string v0, "UNKNOWN"

    const-string v1, "RGB"

    const-string v2, "GRAYSCALE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/support/metadata/schema/ColorSpaceType;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 13
    sget-object v0, Lorg/tensorflow/lite/support/metadata/schema/ColorSpaceType;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
