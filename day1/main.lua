print("Hello I am underwater plz help")
--print(fileHandle)

function getFile()
    local fileHandle = io.open("depth.txt", "r")
    return fileHandle
end

function isDepthIncreeasing(prevVal, currentVal)
    if (prevVal == nil or currentVal == nil) then
        print("Nillity null value")
        return false
    end

    if (currentVal > prevVal) then
        print("Depth increased")
        return true
    end

    print("Depth decreased")
    return false
end



function main()
    --Gets the fileHandler
    local fh = getFile()
    local previous = nil
    local depthIncrCounter = 0

    --fh:lines() Returns an iterator function
    for line in fh:lines() do
        if (isDepthIncreeasing(previous, line)) then
            depthIncrCounter = depthIncrCounter + 1
        end
        previous = line
    end


    print("Depth increased " .. depthIncrCounter .. " times")
end

main()
