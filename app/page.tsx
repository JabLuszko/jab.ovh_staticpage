import { Bug, Cat, Apple, ShieldQuestion, Puzzle, AlertTriangle, Variable, Goal } from "lucide-react"
import type { LucideIcon } from "lucide-react"

// Define the array of icons at the top for easy modification
const iconArray: LucideIcon[] = [
  Bug,
  Cat,
  Apple,
  ShieldQuestion,
  Puzzle,
  AlertTriangle, // This is the correct name for 'triangle-alert' in Lucide
  Variable,
  Goal,
]

// Function to get a random icon from the array
const getRandomIcon = () => iconArray[Math.floor(Math.random() * iconArray.length)]

export default function QuestionMarkLandingPage() {
  return (
    <div className="min-h-screen bg-gray-100 flex flex-col items-center justify-center">
      <h1 className="text-6xl font-bold mb-8">?</h1>
      <div className="grid grid-cols-5 gap-8">
        {Array(25)
          .fill(null)
          .map((_, index) => {
            const Icon = getRandomIcon()
            return <Icon key={index} className="w-16 h-16 text-gray-600" />
          })}
      </div>
      <p className="mt-12 text-2xl font-semibold">jab.ovh</p>
    </div>
  )
}

