.class public Lorg/checkerframework/checker/units/UnitsTools;
.super Ljava/lang/Object;
.source "UnitsTools.java"


# static fields
.field public static final A:I = 0x1

.field public static final C:I = 0x1

.field public static final K:I = 0x1

.field public static final cd:I = 0x1

.field public static final deg:D = 1.0

.field public static final g:I = 0x1

.field public static final h:I = 0x1

.field public static final kg:I = 0x1

.field public static final km:I = 0x1

.field public static final km2:I = 0x1

.field public static final kmPERh:I = 0x1

.field public static final m:I = 0x1

.field public static final m2:I = 0x1

.field public static final mPERs:I = 0x1

.field public static final mPERs2:I = 0x1

.field public static final min:I = 0x1

.field public static final mm:I = 0x1

.field public static final mm2:I = 0x1

.field public static final mol:I = 0x1

.field public static final rad:D = 1.0

.field public static final s:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCelsiusToKelvin(I)I
    .registers 2
    .param p0, "c"    # I

    .line 112
    add-int/lit16 v0, p0, 0x111

    return v0
.end method

.method public static fromGramToKiloGram(I)I
    .registers 2
    .param p0, "g"    # I

    .line 81
    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static fromHourToMinute(I)I
    .registers 2
    .param p0, "h"    # I

    .line 133
    mul-int/lit8 v0, p0, 0x3c

    return v0
.end method

.method public static fromKelvinToCelsius(I)I
    .registers 2
    .param p0, "k"    # I

    .line 108
    add-int/lit16 v0, p0, -0x111

    return v0
.end method

.method public static fromKiloGramToGram(I)I
    .registers 2
    .param p0, "kg"    # I

    .line 85
    mul-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static fromKiloMeterPerHourToMeterPerSecond(D)D
    .registers 4
    .param p0, "kmph"    # D

    .line 97
    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static fromKiloMeterToMeter(I)I
    .registers 2
    .param p0, "km"    # I

    .line 73
    mul-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static fromMeterPerSecondToKiloMeterPerHour(D)D
    .registers 4
    .param p0, "mps"    # D

    .line 93
    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double v0, v0, p0

    return-wide v0
.end method

.method public static fromMeterToKiloMeter(I)I
    .registers 2
    .param p0, "m"    # I

    .line 69
    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static fromMeterToMilliMeter(I)I
    .registers 2
    .param p0, "m"    # I

    .line 65
    mul-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static fromMilliMeterToMeter(I)I
    .registers 2
    .param p0, "mm"    # I

    .line 61
    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static fromMinuteToHour(I)I
    .registers 2
    .param p0, "min"    # I

    .line 129
    div-int/lit8 v0, p0, 0x3c

    return v0
.end method

.method public static fromMinuteToSecond(I)I
    .registers 2
    .param p0, "min"    # I

    .line 125
    mul-int/lit8 v0, p0, 0x3c

    return v0
.end method

.method public static fromSecondToMinute(I)I
    .registers 2
    .param p0, "s"    # I

    .line 121
    div-int/lit8 v0, p0, 0x3c

    return v0
.end method

.method public static toDegrees(D)D
    .registers 4
    .param p0, "angrad"    # D

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toRadians(D)D
    .registers 4
    .param p0, "angdeg"    # D

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method
